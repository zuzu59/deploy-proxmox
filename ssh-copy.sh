#!/usr/bin/env bash
#Copie des certificats ssh pour l'utilisateur Ubuntu
#zf170222.1541

echo ---------- copie les certificats ssh
mkdir ~/.ssh
ssh-keygen -q -P "" -f ~/.ssh/id_rsa
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDksDVJZQ3GaCkD4N1etyJ8yWpaSXrLnynG7jHqhqEmQQKAwWpauyp2mIUYKFyv9JnAlf91XCwGzE1azSJokkfCMo4AEpgj4SgNuucJEzMy4Zjrl3VSyBPzGvpN40XR/ITOf9Dd8VCTss6z28Kbvj+GBENRNIxGIc0FUgaTVqkjrof24TentxSPbEEpfvsCTh7ANVRrwGZMr4PzX5M+yen+MfQeNTBmSRBUpjWe0BZfTcGpOxYKlohsPbd1If5tnQPURWHhMZChNo4ASqtRRnHm5grlZqZP+jUQ0jrkU3Q+1LzSyN3J9KWSTVGVUonc8pI9JARLf1N+2aWKgq/L9eM3 zuzu@siipc6.epfl.ch' >> ~/.ssh/authorized_keys


