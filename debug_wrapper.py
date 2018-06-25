import ptvsd
import time

from main import main

print("Waiting to attach")

address = ('0.0.0.0', 3000)
ptvsd.enable_attach('my_secret', address)
ptvsd.wait_for_attach()

time.sleep(2)
print("attached")

main()

print("detach")
