.class public Lorg/catrobat/catroid/scratchconverter/protocol/message/base/InfoMessage;
.super Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage;
.source "InfoMessage.java"


# instance fields
.field private final catrobatLanguageVersion:D

.field private final jobList:[Lorg/catrobat/catroid/scratchconverter/protocol/Job;


# direct methods
.method public constructor <init>(D[Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 1
    .param p1, "catrobatLanguageVersion"    # D
    .param p3, "jobList"    # [Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 36
    invoke-direct {p0}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage;-><init>()V

    .line 37
    iput-wide p1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/InfoMessage;->catrobatLanguageVersion:D

    .line 38
    if-eqz p3, :cond_0

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    :goto_0
    iput-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/InfoMessage;->jobList:[Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 39
    return-void
.end method


# virtual methods
.method public getCatrobatLanguageVersion()D
    .locals 2

    .line 42
    iget-wide v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/InfoMessage;->catrobatLanguageVersion:D

    return-wide v0
.end method

.method public getJobList()[Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .locals 2

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/InfoMessage;->jobList:[Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    return-object v0
.end method
