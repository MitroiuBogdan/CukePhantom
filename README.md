# GlassGate

**GlassGate** is a Spring Boot-based proxy application that retrieves and serves external webpages through a RESTful endpoint. Designed as a lightweight and secure bridge between clients and external sites, it acts as a reflective gateway — efficiently mirroring external content while offering potential for inspection, transformation, or monitoring.

---

## 🔍 Features

- 🌐 **Proxy Endpoint**  
  Retrieves and returns full HTML content from specified external URLs.

- 🧩 **Modular Design**  
  Clean separation between core proxy logic and testing components.

- ⚙️ **Spring Boot Powered**  
  Fast startup, easy configuration, production-ready out of the box.

---

## 🧪 PhantomHunter (Testing Module)

**PhantomHunter** is the dedicated testing module for GlassGate. It combines the power of **Cucumber** (for behavior-driven development) and **Playwright** (for browser-level testing) to verify both the proxy's correctness and the content rendering pipeline.

### Key Capabilities:

- ✅ BDD Scenarios (via Cucumber)
- 🕵️‍♂️ End-to-end testing with real browser interaction (via Playwright)
- 👻 Ghost-like test execution — quietly validating content, structure, and response codes

---

## 🚀 Use Cases

- Safely exposing or monitoring external content
- Building custom content wrappers or analyzers
- Verifying HTML rendering across sites in test environments
- Testing content availability or proxy reliability with real browser behavior

---

## 📦 Modules

| Module         | Description                                  |
|----------------|----------------------------------------------|
| `glassgate-core`     | Spring Boot app for proxying and returning webpages |
| `phantomhunter-tests` | Testing suite using Cucumber + Playwright         |

---

## 🛠️ Tech Stack

- Java 17+
- Spring Boot
- Cucumber
- Playwright
- Maven (or Gradle, depending on setup)

---

## 🧭 Getting Started

> Detailed instructions coming soon. Clone the repo, build the core, and run `phantomhunter-tests` to begin.

---

## 📄 License

MIT (or your preferred license)

---

