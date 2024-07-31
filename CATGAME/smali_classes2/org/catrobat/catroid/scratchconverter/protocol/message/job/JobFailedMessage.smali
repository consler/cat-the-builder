.class public Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFailedMessage;
.super Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;
.source "JobFailedMessage.java"


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .param p1, "jobID"    # J
    .param p3, "message"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;-><init>(J)V

    .line 32
    iput-object p3, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFailedMessage;->message:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFailedMessage;->message:Ljava/lang/String;

    return-object v0
.end method
