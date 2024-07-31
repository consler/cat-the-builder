.class public Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobReadyMessage;
.super Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;
.source "JobReadyMessage.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "jobID"    # J

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;-><init>(J)V

    .line 29
    return-void
.end method
