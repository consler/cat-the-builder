.class public Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;
.super Ljava/lang/Object;
.source "MessageWithProperties.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private message:Lname/antonsmirnov/firmata/message/Message;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lname/antonsmirnov/firmata/message/Message;)V
    .locals 1
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/Message;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;->properties:Ljava/util/Map;

    .line 15
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;->setMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getMessage()Lname/antonsmirnov/firmata/message/Message;
    .locals 1

    .line 21
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;->message:Lname/antonsmirnov/firmata/message/Message;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(Lname/antonsmirnov/firmata/message/Message;)V
    .locals 0
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/Message;

    .line 25
    iput-object p1, p0, Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;->message:Lname/antonsmirnov/firmata/message/Message;

    .line 26
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;->message:Lname/antonsmirnov/firmata/message/Message;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;->properties:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
