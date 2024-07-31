.class public Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFinishedMessage;
.super Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;
.source "JobFinishedMessage.java"


# instance fields
.field private final cachedDate:Ljava/util/Date;

.field private final downloadURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/util/Date;)V
    .locals 0
    .param p1, "jobID"    # J
    .param p3, "downloadURL"    # Ljava/lang/String;
    .param p4, "cachedDate"    # Ljava/util/Date;

    .line 34
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;-><init>(J)V

    .line 35
    iput-object p3, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFinishedMessage;->downloadURL:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFinishedMessage;->cachedDate:Ljava/util/Date;

    .line 37
    return-void
.end method


# virtual methods
.method public getCachedDate()Ljava/util/Date;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFinishedMessage;->cachedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDownloadURL()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobFinishedMessage;->downloadURL:Ljava/lang/String;

    return-object v0
.end method
