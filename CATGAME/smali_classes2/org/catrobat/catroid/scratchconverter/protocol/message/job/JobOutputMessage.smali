.class public Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobOutputMessage;
.super Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;
.source "JobOutputMessage.java"


# instance fields
.field private final lines:[Ljava/lang/String;


# direct methods
.method public constructor <init>(J[Ljava/lang/String;)V
    .locals 1
    .param p1, "jobID"    # J
    .param p3, "lines"    # [Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;-><init>(J)V

    .line 36
    if-eqz p3, :cond_0

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobOutputMessage;->lines:[Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getLines()[Ljava/lang/String;
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobOutputMessage;->lines:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
