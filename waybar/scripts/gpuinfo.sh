        #!/bin/bash
        # This is a sample script for NVIDIA GPUs
        # You may need to adjust the command to get the correct temperature output
        
        # Query the temperature and extract the relevant line
        TEMP_LINE=$(nvidia-smi -q -d temperature | grep -i "GPU Current")
        
        # Extract the temperature value (e.g., 50 C)
        TEMP_VALUE=$(echo "$TEMP_LINE" | sed 's/.*: \([0-9]*\) C/\1/')
        
        echo "{\"text\": \"${TEMP_VALUE}°C\", \"tooltip\": \"GPU: ${TEMP_VALUE}°C\"}"
