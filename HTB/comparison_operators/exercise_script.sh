#!/bin/bash

var="8dm7KsjU28B7v621Jls"
value="ERmFRMVZ0U2paTlJYTkxDZz09Cg"

for i in {1..40}
do
        var=$(echo "$var" | base64)

        #<---- If condition here:
        if [[ "${var}" == *"${value}"* && ${#var} -gt 113450 ]]; then
        # corrected, using native character count utility from bash: ${#var}
        # 1 and 2. Done
            echo "$var" | tail -c 20
        # 3. assessing last 20 characters of this decoded including the hidden line jump
            break 
        else
            continue
            # To not waste cycles in the following code
        fi
done

# 1. Create an "If-Else" condition in the "For"-Loop that checks 
# if the variable named "var" contains the contents of the variable named "value".

# 2. Additionally, the variable "var" must contain more than 113,450 characters. 

# 3. If these conditions are met, 
# the script must then print the last 20 characters of the variable "var". 
 
# 4. Submit these last 20 characters as the answer.
