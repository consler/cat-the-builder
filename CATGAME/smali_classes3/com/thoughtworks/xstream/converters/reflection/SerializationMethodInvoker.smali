.class public Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;
.super Ljava/lang/Object;
.source "SerializationMethodInvoker.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/Caching;


# instance fields
.field serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    return-void
.end method


# virtual methods
.method public callReadObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "stream"    # Ljava/io/ObjectInputStream;

    .line 59
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    invoke-virtual {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->callReadObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/io/ObjectInputStream;)V

    .line 60
    return-void
.end method

.method public callReadResolve(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->callReadResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public callWriteObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "instance"    # Ljava/lang/Object;
    .param p3, "stream"    # Ljava/io/ObjectOutputStream;

    .line 73
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    invoke-virtual {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->callWriteObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/io/ObjectOutputStream;)V

    .line 74
    return-void
.end method

.method public callWriteReplace(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->callWriteReplace(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public flushCache()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->flushCache()V

    .line 81
    return-void
.end method

.method public supportsReadObject(Ljava/lang/Class;Z)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "includeBaseClasses"    # Z

    .line 52
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->supportsReadObject(Ljava/lang/Class;Z)Z

    move-result v0

    return v0
.end method

.method public supportsWriteObject(Ljava/lang/Class;Z)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "includeBaseClasses"    # Z

    .line 66
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->supportsWriteObject(Ljava/lang/Class;Z)Z

    move-result v0

    return v0
.end method
