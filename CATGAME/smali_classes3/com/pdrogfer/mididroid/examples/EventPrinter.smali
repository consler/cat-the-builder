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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/pdrogfer/mididroid/examples/EventPrinter;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    .line 62
    :try_start_0
    new-instance p0, Lcom/pdrogfer/mididroid/MidiFile;

    new-instance v0, Ljava/io/File;

    const-string v1, "inputmid.mid"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/pdrogfer/mididroid/MidiFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    new-instance v0, Lcom/pdrogfer/mididroid/util/MidiProcessor;

    invoke-direct {v0, p0}, Lcom/pdrogfer/mididroid/util/MidiProcessor;-><init>(Lcom/pdrogfer/mididroid/MidiFile;)V

    .line 74
    new-instance p0, Lcom/pdrogfer/mididroid/examples/EventPrinter;

    const-string v1, "Individual Listener"

    invoke-direct {p0, v1}, Lcom/pdrogfer/mididroid/examples/EventPrinter;-><init>(Ljava/lang/String;)V

    .line 75
    const-class v1, Lcom/pdrogfer/mididroid/event/meta/Tempo;

    invoke-virtual {v0, p0, v1}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->registerEventListener(Lcom/pdrogfer/mididroid/util/MidiEventListener;Ljava/lang/Class;)V

    .line 76
    const-class v1, Lcom/pdrogfer/mididroid/event/NoteOn;

    invoke-virtual {v0, p0, v1}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->registerEventListener(Lcom/pdrogfer/mididroid/util/MidiEventListener;Ljava/lang/Class;)V

    .line 79
    new-instance p0, Lcom/pdrogfer/mididroid/examples/EventPrinter;

    const-string v1, "Listener For All"

    invoke-direct {p0, v1}, Lcom/pdrogfer/mididroid/examples/EventPrinter;-><init>(Ljava/lang/String;)V

    .line 80
    const-class v1, Lcom/pdrogfer/mididroid/event/MidiEvent;

    invoke-virtual {v0, p0, v1}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->registerEventListener(Lcom/pdrogfer/mididroid/util/MidiEventListener;Ljava/lang/Class;)V

    .line 83
    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->start()V

    const-wide/16 v1, 0x2710

    .line 89
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 90
    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->stop()V

    .line 92
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 93
    invoke-virtual {v0}, Lcom/pdrogfer/mididroid/util/MidiProcessor;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception p0

    .line 66
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/pdrogfer/mididroid/event/MidiEvent;J)V
    .locals 1

    .line 40
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/pdrogfer/mididroid/examples/EventPrinter;->mLabel:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " received event: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 29
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pdrogfer/mididroid/examples/EventPrinter;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Started!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pdrogfer/mididroid/examples/EventPrinter;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resumed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onStop(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 48
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pdrogfer/mididroid/examples/EventPrinter;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Finished!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pdrogfer/mididroid/examples/EventPrinter;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " paused"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
