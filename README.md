
![img](https://github.com/Chin-Sun/Reserve-Reading-Room/blob/06a5d20b9cf0bcaec45f7e48582f4e3f66658298/Demo/IMG_8038.GIF)

# 📚 Reserve Reading Room – Intelligent Library Booking System

📅 **Project Duration:** 3 days  

## 📌 Overview

**Reserve Reading Room** is an intelligent, course-linked library room booking system designed to improve study resource allocation and group learning. It enables students to reserve reading rooms based on specific **courses and textbooks**, enforces **capacity control**, prevents **double-booking**, and provides **instructors with visibility** into collaborative learning groups.

The platform ensures a smooth and fair reservation process for all users while maintaining academic relevance through textbook and course verification.

---

## 🎯 Core Objectives

- Enable **course-specific** and **textbook-based** room reservations  
- Enforce **capacity limits** and **time slot rules** per reading room  
- Prevent **duplicate reservations** while supporting group study  
- Allow **instructors** to monitor group study dynamics  
- Seamlessly integrate with the university’s **registration system**

---

## 🧩 Key Features

- 🔐 **Student Authentication:**  
  - Secure login using university credentials  
  - Role-based access (student vs. instructor)

- 📖 **Course & Textbook Integration:**  
  - Users must select a valid **course number** and **textbook** during reservation  
  - Real-time validation with course registration database

- 🏠 **Room Search & Availability Check:**  
  - Filter rooms by course number or textbook  
  - Availability shown for selected time slot

- 👥 **Group Booking Support:**  
  - Invite friends via student ID  
  - Share room occupancy up to the **10-student capacity limit**

- ⏱ **Flexible Time Slot Management:**  
  - Minimum booking: **1 hour**, maximum: **5 hours**  
  - Overlapping time or duplicate course reservations are prevented

- 🆕 **New Room Request & Textbook Ordering:**  
  - If no rooms are available, system allows students to reserve new rooms  
  - Automatically triggers **textbook order** from library inventory

- 📈 **Instructor Dashboard:**  
  - View booking logs for each course  
  - See group compositions and study patterns

---

## 🛠️ System Architecture

```text
[Student Interface] ⇄ [Reservation Backend] ⇄ [Room Database]
                                   ⇓
                     [Course Registration System]
                                   ⇓
                         [Instructor Dashboard]
```
- **Backend Framework**: Django / Flask (based on actual implementation)  
- **Database**: PostgreSQL / MySQL  
- **Frontend**: HTML/CSS + JavaScript  
- **Authentication**: OAuth 2.0 or university SSO (Single Sign-On)  
---

## 🚀 Development Workflow
**1. Requirement Gathering:**
- Defined use cases for students and instructors  
- Designed data model with relationships among users, courses, textbooks, and rooms  
**2. Backend Development:**
- Implemented reservation logic with validation and conflict checking  
- Connected to registration API for real-time student-course linkage  
**3. Frontend Development:**
- Built responsive UI for booking forms, room search, and booking summary  
- Developed instructor interface to browse logs and visualize study groups  
**4. Business Rule Enforcement:**
- Capacity enforcement logic  
- No duplicate course-time-room reservations  
- Intelligent textbook-based filtering  
**5. Testing & Deployment:**
- Unit and integration testing  
- Simulated real-time bookings by multiple users  
- Deployed on internal university server / cloud environment  
---

## 💡 Future Enhancements
- 📆 Calendar view for room availability  
- 📲 Mobile app integration for on-the-go booking  
- 📩 Email notifications for booking confirmations and reminders  
- 🧠 Analytics dashboard for usage heatmaps and peak times  
---
## 🧠 Conclusion
The Reserve Reading Room platform combines academic relevance with smart resource allocation to support focused, collaborative learning. By embedding course and textbook context into the reservation flow, it ensures that library spaces are used meaningfully, while giving instructors insights into student engagement beyond the classroom.
