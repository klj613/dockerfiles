Setting up permissions on the hosts app dir
============================================

- `sudo chown YOUR_USER:33 /path/to/the/app/dir -R` - The '33' is normally the apache / http 
   user. You can be specific and use which ever username your distro uses. The ID should
   match the container.
- `sudo chmod 664 /path/to/the/app/dir -R`
- `sudo chmod 764 /path/to/the/app/dir`
- `sudo find /path/to/the/app/dir -type d -exec chmod +x {} +`
- Disclaimer: I am no permission guru. 
