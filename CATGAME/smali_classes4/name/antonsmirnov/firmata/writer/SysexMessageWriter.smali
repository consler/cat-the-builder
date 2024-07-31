.class public Lname/antonsmirnov/firmata/writer/SysexMessageWriter;
.super Ljava/lang/Object;
.source "SysexMessageWriter.java"

# interfaces
.implements Lname/antonsmirnov/firmata/writer/IMessageWriter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ConcreteSysexMessage:",
        "Lname/antonsmirnov/firmata/message/SysexMessage;",
        ">",
        "Ljava/lang/Object;",
        "Lname/antonsmirnov/firmata/writer/IMessageWriter<",
        "TConcreteSysexMessage;>;"
    }
.end annotation


# static fields
.field public static final COMMAND_END:I = 0xf7

.field public static final COMMAND_START:I = 0xf0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    .local p0, "this":Lname/antonsmirnov/firmata/writer/SysexMessageWriter;, "Lname/antonsmirnov/firmata/writer/SysexMessageWriter<TConcreteSysexMessage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic write(Lname/antonsmirnov/firmata/message/Message;Lname/antonsmirnov/firmata/serial/ISerial;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 12
    .local p0, "this":Lname/antonsmirnov/firmata/writer/SysexMessageWriter;, "Lname/antonsmirnov/firmata/writer/SysexMessageWriter<TConcreteSysexMessage;>;"
    check-cast p1, Lname/antonsmirnov/firmata/message/SysexMessage;

    invoke-virtual {p0, p1, p2}, Lname/antonsmirnov/firmata/writer/SysexMessageWriter;->write(Lname/antonsmirnov/firmata/message/SysexMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V

    return-void
.end method

.method public write(Lname/antonsmirnov/firmata/message/SysexMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V
    .locals 1
    .param p2, "serial"    # Lname/antonsmirnov/firmata/serial/ISerial;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TConcreteSysexMessage;",
            "Lname/antonsmirnov/firmata/serial/ISerial;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 18
    .local p0, "this":Lname/antonsmirnov/firmata/writer/SysexMessageWriter;, "Lname/antonsmirnov/firmata/writer/SysexMessageWriter<TConcreteSysexMessage;>;"
    .local p1, "message":Lname/antonsmirnov/firmata/message/SysexMessage;, "TConcreteSysexMessage;"
    const/16 v0, 0xf0

    invoke-interface {p2, v0}, Lname/antonsmirnov/firmata/serial/ISerial;->write(I)V

    .line 19
    invoke-virtual {p0, p1, p2}, Lname/antonsmirnov/firmata/writer/SysexMessageWriter;->writeCommand(Lname/antonsmirnov/firmata/message/SysexMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V

    .line 20
    invoke-virtual {p0, p1, p2}, Lname/antonsmirnov/firmata/writer/SysexMessageWriter;->writeData(Lname/antonsmirnov/firmata/message/SysexMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V

    .line 21
    const/16 v0, 0xf7

    invoke-interface {p2, v0}, Lname/antonsmirnov/firmata/serial/ISerial;->write(I)V

    .line 22
    return-void
.end method

.method protected writeCommand(Lname/antonsmirnov/firmata/message/SysexMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V
    .locals 1
    .param p2, "serial"    # Lname/antonsmirnov/firmata/serial/ISerial;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TConcreteSysexMessage;",
            "Lname/antonsmirnov/firmata/serial/ISerial;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 25
    .local p0, "this":Lname/antonsmirnov/firmata/writer/SysexMessageWriter;, "Lname/antonsmirnov/firmata/writer/SysexMessageWriter<TConcreteSysexMessage;>;"
    .local p1, "message":Lname/antonsmirnov/firmata/message/SysexMessage;, "TConcreteSysexMessage;"
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/SysexMessage;->getCommand()I

    move-result v0

    invoke-interface {p2, v0}, Lname/antonsmirnov/firmata/serial/ISerial;->write(I)V

    .line 26
    return-void
.end method

.method protected writeData(Lname/antonsmirnov/firmata/message/SysexMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V
    .locals 1
    .param p2, "serial"    # Lname/antonsmirnov/firmata/serial/ISerial;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TConcreteSysexMessage;",
            "Lname/antonsmirnov/firmata/serial/ISerial;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 29
    .local p0, "this":Lname/antonsmirnov/firmata/writer/SysexMessageWriter;, "Lname/antonsmirnov/firmata/writer/SysexMessageWriter<TConcreteSysexMessage;>;"
    .local p1, "message":Lname/antonsmirnov/firmata/message/SysexMessage;, "TConcreteSysexMessage;"
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/SysexMessage;->getData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/SysexMessage;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lname/antonsmirnov/firmata/BytesHelper;->ENCODE_STRING(Ljava/lang/String;)[B

    move-result-object v0

    .line 31
    .local v0, "dataBytes":[B
    invoke-interface {p2, v0}, Lname/antonsmirnov/firmata/serial/ISerial;->write([B)V

    .line 33
    .end local v0    # "dataBytes":[B
    :cond_0
    return-void
.end method
