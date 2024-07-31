.class public Lcom/pdrogfer/mididroid/examples/EventPrinter;
.super Ljava/lang/Object;
.source "EventPrinter.java"

# interfaces
.implements Lcom/pdrogfer/mididroid/util/MidiEventListener;


# instance fields
.field private mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/pdrogfer/mididroid/examples/EventPrinter;->mLabel:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    .line 62
    .local v0, "midi":Lcom/pdrogfer/mididroid/MidiFile;
    :try_start_0
    new-instance v1, Lcom/pdrogfer/mididroid/MidiFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "inputmid.mid"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/pdrogfer/mididroid/MidiFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 68
    nop

    .line 71
    new-instance v1, Lcom/pdrogfer/mididroid/util/MidiProcessor;

    invoke-direct {v1, v0}, Lcom/pdrogfer/mididroid/util/MidiProcessor;-><init>(Lcom/pdrogfer/mididroid/MidiFile;)V

    .line 74
    .local v1, "processor":Lcom/pdrogfer/mididroid/util/MidiProcessor;
    new-instance v2, Lcom/pdrogfer/mididroid/examples/EventPrinter;

    const-string v3, "Individual Listener"

    invoke-direct {v2, v3}, Lcom/pdrogfer/mididroid/examples/EventPrinter;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, "ep":Lcom/pdrogfer/mididroid/examples/EventPrinter;
    const-class v3, Lcom/pdrogfer/mididroid/event/meta/Tempo;

    invoke-virtual {v1, v2, v3}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->registerEventListener(Lcom/pdrogfer/mididroid/util/MidiEventListener;Ljava/lang/Class;)V

    .line 76
    const-class v3, Lcom/pdrogfer/mididroid/event/NoteOn;

    invoke-virtual {v1, v2, v3}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->registerEventListener(Lcom/pdrogfer/mididroid/util/MidiEventListener;Ljava/lang/Class;)V

    .line 79
    new-instance v3, Lcom/pdrogfer/mididroid/examples/EventPrinter;

    const-string v4, "Listener For All"

    invoke-direct {v3, v4}, Lcom/pdrogfer/mididroid/examples/EventPrinter;-><init>(Ljava/lang/String;)V

    .line 80
    .local v3, "ep2":Lcom/pdrogfer/mididroid/examples/EventPrinter;
    const-class v4, Lcom/pdrogfer/mididroid/event/MidiEvent;

    invoke-virtual {v1, v3, v4}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->registerEventListener(Lcom/pdrogfer/mididroid/util/MidiEventListener;Ljava/lang/Class;)V

    .line 83
    invoke-virtual {v1}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->start()V

    .line 89
    const-wide/16 v4, 0x2710

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 90
    invoke-virtual {v1}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->stop()V

    .line 92
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 93
    invoke-virtual {v1}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    goto :goto_0

    .line 95
    :catch_0
    move-exception v4

    .line 98
    :goto_0
    return-void

    .line 64
    .end local v1    # "processor":Lcom/pdrogfer/mididroid/util/MidiProcessor;
    .end local v2    # "ep":Lcom/pdrogfer/mididroid/examples/EventPrinter;
    .end local v3    # "ep2":Lcom/pdrogfer/mididroid/examples/EventPrinter;
    :catch_1
    move-exception v1

    .line 66
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 67
    return-void
.end method


# virtual methods
.method public onEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;J)V
    .locals 3
    .param p1, "event"    # Lcom/pdrogfer/mididroid/event/MidiEvent;
    .param p2, "ms"    # J

    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pdrogfer/mididroid/examples/EventPrinter;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " received event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public onStart(Z)V
    .locals 3
    .param p1, "fromBeginning"    # Z

    .line 27
    if-eqz p1, :cond_0

    .line 29
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pdrogfer/mididroid/examples/EventPrinter;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Started!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pdrogfer/mididroid/examples/EventPrinter;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resumed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    :goto_0
    return-void
.end method

.method public onStop(Z)V
    .locals 3
    .param p1, "finished"    # Z

    .line 46
    if-eqz p1, :cond_0

    .line 48
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pdrogfer/mididroid/examples/EventPrinter;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Finished!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pdrogfer/mididroid/examples/EventPrinter;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " paused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void
.end method
