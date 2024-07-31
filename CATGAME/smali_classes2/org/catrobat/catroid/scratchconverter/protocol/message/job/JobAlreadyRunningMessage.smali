.class public Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobAlreadyRunningMessage;
.super Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;
.source "JobAlreadyRunningMessage.java"


# instance fields
.field private final jobImageURL:Ljava/lang/String;

.field private final jobTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "jobID"    # J
    .param p3, "jobTitle"    # Ljava/lang/String;
    .param p4, "jobImageURL"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;-><init>(J)V

    .line 33
    iput-object p3, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobAlreadyRunningMessage;->jobTitle:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobAlreadyRunningMessage;->jobImageURL:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getJobImageURL()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobAlreadyRunningMessage;->jobImageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getJobTitle()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobAlreadyRunningMessage;->jobTitle:Ljava/lang/String;

    return-object v0
.end method
