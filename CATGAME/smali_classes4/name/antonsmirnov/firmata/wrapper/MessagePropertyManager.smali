.class public abstract Lname/antonsmirnov/firmata/wrapper/MessagePropertyManager;
.super Ljava/lang/Object;
.source "MessagePropertyManager.java"

# interfaces
.implements Lname/antonsmirnov/firmata/wrapper/IMessagePropertyManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ConcretePropertyClass:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lname/antonsmirnov/firmata/wrapper/IMessagePropertyManager<",
        "TConcretePropertyClass;>;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 11
    .local p0, "this":Lname/antonsmirnov/firmata/wrapper/MessagePropertyManager;, "Lname/antonsmirnov/firmata/wrapper/MessagePropertyManager<TConcretePropertyClass;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lname/antonsmirnov/firmata/wrapper/MessagePropertyManager;->key:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method protected abstract createProperty()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TConcretePropertyClass;"
        }
    .end annotation
.end method

.method public get(Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;)Ljava/lang/Object;
    .locals 1
    .param p1, "data"    # Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;",
            ")TConcretePropertyClass;"
        }
    .end annotation

    .line 16
    .local p0, "this":Lname/antonsmirnov/firmata/wrapper/MessagePropertyManager;, "Lname/antonsmirnov/firmata/wrapper/MessagePropertyManager<TConcretePropertyClass;>;"
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/MessagePropertyManager;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;)V
    .locals 2
    .param p1, "data"    # Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;

    .line 20
    .local p0, "this":Lname/antonsmirnov/firmata/wrapper/MessagePropertyManager;, "Lname/antonsmirnov/firmata/wrapper/MessagePropertyManager<TConcretePropertyClass;>;"
    invoke-virtual {p0}, Lname/antonsmirnov/firmata/wrapper/MessagePropertyManager;->createProperty()Ljava/lang/Object;

    move-result-object v0

    .line 21
    .local v0, "property":Ljava/lang/Object;, "TConcretePropertyClass;"
    iget-object v1, p0, Lname/antonsmirnov/firmata/wrapper/MessagePropertyManager;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    return-void
.end method
