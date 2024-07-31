.class public Lname/antonsmirnov/firmata/message/SamplingIntervalMessage;
.super Lname/antonsmirnov/firmata/message/SysexMessage;
.source "SamplingIntervalMessage.java"


# static fields
.field public static final COMMAND:I = 0x7a


# instance fields
.field private interval:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    const/16 v0, 0x7a

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lname/antonsmirnov/firmata/message/SysexMessage;-><init>(ILjava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getInterval()I
    .locals 1

    .line 20
    iget v0, p0, Lname/antonsmirnov/firmata/message/SamplingIntervalMessage;->interval:I

    return v0
.end method

.method public setInterval(I)V
    .locals 0
    .param p1, "interval"    # I

    .line 27
    iput p1, p0, Lname/antonsmirnov/firmata/message/SamplingIntervalMessage;->interval:I

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lname/antonsmirnov/firmata/message/SamplingIntervalMessage;->interval:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SamplingIntervalMessage[interval={0}]"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
