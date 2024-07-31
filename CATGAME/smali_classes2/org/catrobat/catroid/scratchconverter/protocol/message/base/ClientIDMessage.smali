.class public Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ClientIDMessage;
.super Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage;
.source "ClientIDMessage.java"


# instance fields
.field private final clientID:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "clientID"    # J

    .line 31
    invoke-direct {p0}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage;-><init>()V

    .line 32
    iput-wide p1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ClientIDMessage;->clientID:J

    .line 33
    return-void
.end method


# virtual methods
.method public getClientID()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/ClientIDMessage;->clientID:J

    return-wide v0
.end method
