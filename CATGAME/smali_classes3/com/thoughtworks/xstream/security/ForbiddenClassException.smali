.class public Lcom/thoughtworks/xstream/security/ForbiddenClassException;
.super Lcom/thoughtworks/xstream/XStreamException;
.source "ForbiddenClassException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/XStreamException;-><init>(Ljava/lang/String;)V

    return-void
.end method
