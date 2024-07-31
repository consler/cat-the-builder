.class public Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobProgressMessage;
.super Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;
.source "JobProgressMessage.java"


# instance fields
.field private final progress:S


# direct methods
.method public constructor <init>(JS)V
    .locals 0
    .param p1, "jobID"    # J
    .param p3, "progress"    # S

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;-><init>(J)V

    .line 32
    iput-short p3, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobProgressMessage;->progress:S

    .line 33
    return-void
.end method


# virtual methods
.method public getProgress()S
    .locals 1

    .line 36
    iget-short v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobProgressMessage;->progress:S

    return v0
.end method
