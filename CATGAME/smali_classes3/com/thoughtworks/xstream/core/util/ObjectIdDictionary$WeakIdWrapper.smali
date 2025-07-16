.class Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$WeakIdWrapper;
.super Ljava/lang/ref/WeakReference;
.source "ObjectIdDictionary.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$Wrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeakIdWrapper"
.end annotation


# instance fields
.field private final hashCode:I

.field private final synthetic this$0:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;Ljava/lang/Object;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$WeakIdWrapper;->this$0:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    .line 72
    invoke-static {p1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->access$000(Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 73
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$WeakIdWrapper;->hashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$WeakIdWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$Wrapper;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$Wrapper;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$WeakIdWrapper;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$WeakIdWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "(null)"

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
