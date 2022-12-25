#!/command/with-contenv sh

ARGS=""

if [ ! -z "$IP" ]; then
    ARGS="${ARGS} -ip ${IP}"
fi

if [ ! -z "$NAME" ]; then
    ARGS="${ARGS} -n ${NAME}"
fi

if [ ! -z "$PATTERN" ]; then
    ARGS="${ARGS} -p ${PATTERN}"
fi

if [ ! -z "$TEMP_DIR" ]; then
    ARGS="${ARGS} -t ${TEMP_DIR}"
fi

if [ ! -z "$CMDLINE" ]; then
    ARGS="${ARGS} ${CMDLINE}"
fi

if [ ! -z "$DIRECTORY" ]; then
    ARGS="${ARGS} -d ${DIRECTORY}"
fi

cd /app

echo "Starting"
node index.js $ARGS "$@"