# 📋 MAIN PROMPTS FOR DEVELOPMENT

This document contains the main prompts for efficiently working with development projects. Each prompt integrates essential project rules and is designed to guide our collaboration in a structured manner.

## 1. 🔍 Comparative Analysis

### Project Architecture Analysis

```prompt
I would like to analyze the [FEATURE] functionality by comparing the original implementation with our current version.

**Analysis rules to follow:**
- Always first consult the original code in the reference repository
- Never propose modifications to the original code (reference only)
- Clearly identify implementation differences and their impacts
- Respect the modular architecture (frontend/server/backend)
- Evaluate compatibility with existing systems and security

**Elements to analyze:**
- Code structure and organization
- Dependencies and integrations
- Performance and optimizations
- Security and permission management
- Potential improvement points

**Expected response format:**
1. Summary of the original implementation
2. Analysis of differences with current implementation
3. Impacts on performance and security
4. Concrete recommendations (without modifying code without validation)
5. Be as concise as possible and go straight to the answer.
```

## 2. 🚀 Development

### New Feature Development

```prompt
I would like to develop the [FEATURE] functionality in our project.

**Development rules to follow:**
- No modifications without explicit validation of the implementation plan
- Preserve the modular architecture (frontend/server/backend)
- Incremental and testable development at each stage
- Respect naming conventions (English for code)
- Maintain compatibility with existing systems

**Required preliminary analysis:**
- Impact on existing components
- Required dependencies
- Necessary modifications (files, endpoints, etc.)
- Tests to implement

**Expected implementation plan:**
1. Detailed impact analysis
2. Precise list of files to modify
3. Proposed implementation sequence
4. Test plan (unit and manual)
5. Documentation to update
6. Be as concise as possible and go straight to the answer.
```

## 3. 🐛 Debugging

### Project Debugging

```prompt
I am encountering the following problem in our project: [PROBLEM_DESCRIPTION]

**Debugging rules to follow:**
- Analyze the root cause without immediately modifying the code
- First check the original implementation in the reference repository
- Propose solutions that respect the existing architecture
- Prioritize minimal and targeted corrections
- Clearly document the problem and its solution

**Problem information:**
- Observed behavior: [BEHAVIOR]
- Expected behavior: [EXPECTED]
- Context of occurrence: [CONTEXT]
- Logs/errors: [LOGS]

**Expected resolution process:**
1. Root cause analysis
2. Verification in the original code in the reference repository
3. Proposed solutions (in order of preference)
4. Test plan to validate the correction
5. Documentation of the correction
6. Be as concise as possible and go straight to the answer.
7. No modifications made without user validation.
```

## 4. ⚡ Optimization

### Performance Optimization

```prompt
I would like to optimize the performance of [COMPONENT] in our project.

**Optimization rules to follow:**
- Do not compromise security or stability
- Maintain compatibility with the existing architecture
- Test each optimization individually
- Document performance gains
- Prioritize optimizations with the best impact/risk ratio

**Optimization context:**
- Current performance issue: [ISSUE]
- Current metrics: [METRICS]
- Technical constraints: [CONSTRAINTS]
- Improvement objectives: [OBJECTIVES]

**Expected analysis and plan:**
1. Detailed diagnosis of bottlenecks
2. Comparison with the original implementation
3. Proposed optimizations (in order of impact)
4. Test plan and performance validation
5. Documentation of optimizations
6. Be as concise as possible and go straight to the answer.
```

## 5. 🎨 User Interface

### UI/UX Improvement

```prompt
I would like to improve the user interface of [COMPONENT] in our project.

**UI/UX design rules to follow:**
- Maintain visual consistency with the rest of the application
- Respect the React architecture and existing components
- Prioritize accessibility and user experience
- Test on different screen sizes (responsive design)
- Clearly document proposed changes

**Current UI structure:**
- **Main navigation**: Sidebar with list of workspaces and settings
- **Main components**:
  - Sidebar (lateral navigation with workspaces and settings)
  - Container (conversation interface with history and input)
  - Modals (modal windows for various actions)
  - Settings (application settings)
- **Main pages**:
  - Main (home page)
  - Chat (chat interface)
  - Login (authentication)
  - Admin (user management, workspaces, etc.)
  - GeneralSettings (general settings)
- **UI libraries**:
  - Custom UI components (button, dropdown, input, table)
  - CSS framework for styling
  - Router for navigation

**Improvement context:**
- Target component: [COMPONENT]
- Current issues: [ISSUES]
- Improvement objectives: [OBJECTIVES]
- Technical constraints: [CONSTRAINTS]

**Expected proposal:**
1. Analysis of the current interface and its limitations
2. Mockups or detailed descriptions of proposed improvements
3. List of files to modify and components to create/adapt
4. Implementation plan with responsive considerations
5. Usability tests to perform
6. Documentation of modifications
7. Be as concise as possible and go straight to the answer
8. No modifications without explicit user validation
```

## 6. 📑 Documentation

### Technical Documentation

```prompt
I would like to create/update the technical documentation for [COMPONENT] in our project.

**Documentation rules to follow:**
- Clear and concise language
- Structured format with sections and subsections
- Include code examples where relevant
- Cover installation, configuration, and usage
- Address common issues and troubleshooting

**Documentation requirements:**
- Target audience: [AUDIENCE]
- Documentation type: [TYPE] (API reference, user guide, etc.)
- Key aspects to cover: [ASPECTS]
- Format: [FORMAT] (Markdown, HTML, etc.)

**Expected documentation structure:**
1. Overview and purpose
2. Installation/setup instructions
3. Configuration options
4. Usage examples
5. API reference (if applicable)
6. Troubleshooting
7. Be as concise as possible while being comprehensive
```

## 7. 🧪 Testing

### Test Strategy and Implementation

```prompt
I need to develop a testing strategy for [COMPONENT] in our project.

**Testing rules to follow:**
- Cover unit, integration, and end-to-end testing as appropriate
- Focus on critical paths and edge cases
- Use appropriate testing frameworks
- Ensure tests are maintainable and readable
- Document test coverage and gaps

**Testing context:**
- Component to test: [COMPONENT]
- Current test coverage: [COVERAGE]
- Known issues or edge cases: [ISSUES]
- Testing frameworks available: [FRAMEWORKS]

**Expected testing plan:**
1. Test strategy overview
2. Unit test specifications
3. Integration test specifications
4. End-to-end test scenarios
5. Mock requirements
6. Test execution plan
7. Be thorough but pragmatic in approach
```
