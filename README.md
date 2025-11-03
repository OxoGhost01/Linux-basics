# LINUX practical with jslinux

This practical is initially designed to be used with jslinux at the following address:
https://bellard.org/jslinux/vm.html?cpu=riscv64&url=fedora33-riscv.cfg&mem=512

You must log in to the site and load the “preparation.sh” file.
Then, run “sh preparation.sh” as root.
This will create the necessary files, create the “alice” account, install tree and makeself (just in case), and deploy the first exercise in the alice account.


## The exercises

Then, all you have to do is follow the instructions and get to work.

There are 6 exercises.


To validate an exercise, you need to run a script, which will generate the files for the next exercise, if all goes well.

As a result, each exercise contains the generators for the following files, encoded with base64. On a normal computer, this takes no more than 2 or 3 seconds, but on jslinux, it can take several minutes. You need to be patient.

## In case of problems

If there is a problem under jslinux, you can return to root by pressing “CTRL+D”. To return to alice, type “su - alice”.

If you want to generate exercise X, run the script /root/prepa/genere_exerciceX.sh.

# I am not the creator of these exercises!

If you know who they are, please let me know!
I got this exercise from one of my teachers, and I'm sharing it here because I think it's great.