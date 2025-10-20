🏺 Historealm: The Past Meets the Future

Historealm is an interactive AI and AR-powered mobile application that brings Ancient Egyptian history to life. It transforms traditional museum experiences into immersive, conversational journeys where users can talk to historical figures, explore landmarks, and experience history in 3D.

🚀 Overview

Historealm combines AI, Augmented Reality (AR), and 3D animation to create a next-generation educational experience.
Users can:

Interact with lifelike 3D historical characters through AI chat.

See AR projections of ancient figures inside museums or landmarks.

Get real-time, historically accurate answers through Retrieval-Augmented Generation (RAG).

🧠 Key Features

RAG-based AI System – Uses FastAPI + ChromaDB + LangChain for grounded, context-aware answers.

3D AR Characters – Modeled in Blender, rigged with Mixamo, and integrated into Unity for real-time interaction.

Emotion-Driven Responses – AI replies include emotion tags to trigger character animations (happy, sad, angry).

Speech-to-Text & Text-to-Speech – Whisper AI for transcription and ElevenLabs API for realistic voice cloning.

Cross-Platform Flutter App – Clean UI with Firebase authentication, chat screens, and Google Maps integration.

Location-Based Notifications – Alerts users when they’re near Egyptian landmarks like the Pyramids or Luxor Temple.

⚙️ Tech Stack

Frontend: Flutter (v3.5.3)
Backend: FastAPI, LangChain, ChromaDB
AI Models: OpenAI LLMs, Whisper, ElevenLabs
3D & AR: Unity, Blender, Adobe Mixamo
Database: Firebase, Firestore
Integration Tools: Ngrok, REST APIs

🧩 System Architecture

User Input (voice or text) → sent to FastAPI backend

Whisper AI transcribes voice → text

RAG System retrieves context from ChromaDB using LangChain

LLM generates historically accurate response

Emotion label triggers animation in Unity character

ElevenLabs produces speech audio → synced with lip movement in real time

📱 App Flow

Splash → Login / Register (Firebase)

Home → Character Selection → Chat Screen (Unity Integration)

Map Screen → Location-Based Notifications

🧩 Challenges Solved

Balanced 3D performance and mobile optimization

Solved Flutter–Unity integration conflicts

Ensured accuracy using verified Egyptology sources

Implemented real-time API connectivity with Ngrok

🎓 Academic Context

Historealm was developed as a Computer Engineering graduation project in 2025.
It represents the first Egyptian AR + AI museum assistant, merging education, cultural heritage, and cutting-edge technology.

🔮 Future Enhancements

Add global historical figures (e.g., Salah al-Din, Abraham Lincoln)

Fine-tune custom LLMs for improved historical tone

Offline Q&A support for museums without internet access

Subscription-based AR tours for museums and schools

👥 Team & Acknowledgments

Developers: Mahmoud Hany & Team

Egyptology Advisors: Rahma Reda & Noura Mohamed

Special Thanks: Cairo University – Egyptology Department

🏆 Conclusion

Historealm is more than an app — it’s an AI-powered time machine that makes history interactive, emotional, and unforgettable.
