.class public Lname/antonsmirnov/firmata/message/SystemResetMessage;
.super Lname/antonsmirnov/firmata/message/Message;
.source "SystemResetMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/Message;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 14
    const-string v0, "SystemResetMessage[]"

    return-object v0
.end method
