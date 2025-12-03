import streamlit as st
import random

st.title("🎯 Number Guessing Game")

# Initialize the random number only once per session
if "secret_number" not in st.session_state:
    st.session_state.secret_number = random.randint(1, 100)
    st.session_state.attempts = 0

st.write("I'm thinking of a number between 1 and 100. Try to guess it!")

guess = st.number_input("Enter your guess:", min_value=1, max_value=100, step=1)
guess_button = st.button("Guess")

if guess_button:
    st.session_state.attempts += 1
    
    if guess < st.session_state.secret_number:
        st.warning("Too low! Try again.")
    elif guess > st.session_state.secret_number:
        st.warning("Too high! Try again.")
    else:
        st.success(f"🎉 Correct! The number was {st.session_state.secret_number}.")
        st.success(f"You guessed it in {st.session_state.attempts} attempts!")

        # Reset button
        if st.button("Play Again"):
            st.session_state.secret_number = random.randint(1, 100)
            st.session_state.attempts = 0
            st.experimental_rerun()
