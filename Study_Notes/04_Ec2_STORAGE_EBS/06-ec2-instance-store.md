# EC2 Instance Store

## What Is Instance Store?
Instance Store provides temporary block storage that is physically attached to the host machine running the EC2 instance.

AWS Documentation:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html

---

## Key Characteristics
Very high performance  
No additional cost  
Data is ephemeral  

---

## Data Loss Conditions
Instance stop  
Instance termination  
Underlying hardware failure  

---

## Common Use Cases
Caching  
Temporary data  
Scratch space  
Buffers  

---

## What Instance Store Is NOT
Not persistent  
Not backed up  
Not suitable for databases  

---

## Exam Rule
If data must survive a stop or restart, Instance Store is the wrong choice.

---

## Summary
Instance Store is temporary, high-performance storage tied to the EC2 host.
