package com.dreportz;

public class dereport {

    // Fields to store information 
    private int id;                 // Unique event ID
    private String name;            // Name of the event
    private String event_type;      // Type of event
    private String participant_limit; // Participant limit for the event
    private String time_period;     // Time period of the event
    private String instruction;     // Instructions for the event
    private String assign_organizer; // Organizer of the event
    private String assign_coordinator; // Coordinator of the event

    // Constructor to initialize event information
    public dereport(int id, String name, String event_type, String participant_limit,
                    String time_period, String instruction, String assign_organizer, String assign_coordinator) {
        this.id = id;
        this.name = name;
        this.event_type = event_type;
        this.participant_limit = participant_limit;
        this.time_period = time_period;
        this.instruction = instruction;
        this.assign_organizer = assign_organizer;
        this.assign_coordinator = assign_coordinator;
    }

    // Getter and setter methods for each field

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEvent_type() {
        return event_type;
    }

    public void setEvent_type(String event_type) {
        this.event_type = event_type;
    }

    public String getParticipant_limit() {
        return participant_limit;
    }

    public void setParticipant_limit(String participant_limit) {
        this.participant_limit = participant_limit;
    }

    public String getTime_period() {
        return time_period;
    }

    public void setTime_period(String time_period) {
        this.time_period = time_period;
    }

    public String getInstruction() {
        return instruction;
    }

    public void setInstruction(String instruction) {
        this.instruction = instruction;
    }

    public String getAssign_organizer() {
        return assign_organizer;
    }

    public void setAssign_organizer(String assign_organizer) {
        this.assign_organizer = assign_organizer;
    }

    public String getAssign_coordinator() {
        return assign_coordinator;
    }

    public void setAssign_coordinator(String assign_coordinator) {
        this.assign_coordinator = assign_coordinator;
    }
}
