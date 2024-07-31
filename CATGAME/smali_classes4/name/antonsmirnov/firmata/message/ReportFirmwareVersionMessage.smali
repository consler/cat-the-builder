.class public Lname/antonsmirnov/firmata/message/ReportFirmwareVersionMessage;
.super Lname/antonsmirnov/firmata/message/SysexMessage;
.source "ReportFirmwareVersionMessage.java"


# static fields
.field public static final COMMAND:I = 0x79


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    const/16 v0, 0x79

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lname/antonsmirnov/firmata/message/SysexMessage;-><init>(ILjava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 18
    const-string v0, "ReportFirmwareVersionMessage[]"

    return-object v0
.end method
