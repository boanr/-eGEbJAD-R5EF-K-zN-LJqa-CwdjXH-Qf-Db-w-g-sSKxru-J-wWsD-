WITH RankedStatus AS (
  SELECT
    toolName,
    LOT_STATUS,
    CUR_STATE_DT,
    LAG(CUR_STATE_DT) OVER (PARTITION BY toolName ORDER BY CUR_STATE_DT) AS PRE_STATE_END_DT
  FROM
    DBO.tool_status
)

SELECT
  toolName,
  LOT_STATUS,
  PRE_STATE_END_DT,
  CUR_STATE_DT
FROM
  RankedStatus
WHERE
  PRE_STATE_END_DT IS NOT NULL
ORDER BY
  toolName,
  CUR_STATE_DT;
