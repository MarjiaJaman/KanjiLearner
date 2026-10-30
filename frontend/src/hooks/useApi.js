import { useEffect, useState } from 'react';

// Calls fetcher(arg) and tracks its state: 'idle' while arg is null, then 'loading',
// 'ready' or 'error'. arg can be a value or a plain object; a different arg or retry()
// starts a fresh request. The status is derived from which request the last result
// belongs to, so nothing is set while rendering.
export function useApi(fetcher, arg) {
  const [attempt, setAttempt] = useState(0);
  const [result, setResult] = useState(null);
  const key = arg === null ? null : JSON.stringify(arg ?? null);

  useEffect(() => {
    if (key === null) return undefined;
    let active = true;
    const request = `${key}#${attempt}`;
    fetcher(JSON.parse(key))
      .then((data) => { if (active) setResult({ request, data }); })
      .catch((error) => { if (active) setResult({ request, error }); });
    return () => { active = false; };
  }, [fetcher, key, attempt]);

  let status = 'loading';
  if (key === null) status = 'idle';
  else if (result?.request === `${key}#${attempt}`) status = result.error ? 'error' : 'ready';

  return {
    status,
    data: status === 'ready' ? result.data : undefined,
    retry: () => setAttempt((n) => n + 1),
  };
}
