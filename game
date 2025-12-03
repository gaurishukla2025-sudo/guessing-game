import streamlit as st
import random

st.title("🎯 Simple Guessing Game")

# Create the secret number once per session
if "secret" not in st.session_state:
    st.session_state.secret = random.randint(1, 50)

guess = st.number_input("Guess a number between 1 and 50:", min_value=1, max_value=50)

if st.button("Check Guess"):
    if guess < st.session_state.secret:
        st.write("🔼 Too low!")
    elif guess > st.session_state.secret:
        st.write("🔽 Too high!")
    else:
        st.write("🎉 Correct! You guessed it!")

if st.button("New Game"):
    st.session_state.secret = random.randint(1, 50)
    st.write("🔄 New number generated!")
