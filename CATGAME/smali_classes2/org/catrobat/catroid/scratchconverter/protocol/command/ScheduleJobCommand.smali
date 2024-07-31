.class public Lorg/catrobat/catroid/scratchconverter/protocol/command/ScheduleJobCommand;
.super Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;
.source "ScheduleJobCommand.java"


# direct methods
.method public constructor <init>(JZZ)V
    .locals 2
    .param p1, "jobID"    # J
    .param p3, "force"    # Z
    .param p4, "verbose"    # Z

    .line 28
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;->SCHEDULE_JOB:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;-><init>(Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;)V

    .line 29
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;->JOB_ID:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/scratchconverter/protocol/command/ScheduleJobCommand;->addArgument(Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;Ljava/lang/Object;)V

    .line 30
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;->FORCE:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/scratchconverter/protocol/command/ScheduleJobCommand;->addArgument(Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;Ljava/lang/Object;)V

    .line 31
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;->VERBOSE:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/scratchconverter/protocol/command/ScheduleJobCommand;->addArgument(Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;Ljava/lang/Object;)V

    .line 32
    return-void
.end method
