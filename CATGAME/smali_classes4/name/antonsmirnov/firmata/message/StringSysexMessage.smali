.class public Lname/antonsmirnov/firmata/message/StringSysexMessage;
.super Lname/antonsmirnov/firmata/message/SysexMessage;
.source "StringSysexMessage.java"


# static fields
.field public static final COMMAND:I = 0x71


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    const/16 v0, 0x71

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lname/antonsmirnov/firmata/message/SysexMessage;-><init>(ILjava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/StringSysexMessage;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/message/StringSysexMessage;->setData(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/StringSysexMessage;->getData()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "StringSysexMessage[data=\"{0}\"]"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
