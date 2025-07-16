.class public Lcom/thoughtworks/xstream/security/NoPermission;
.super Ljava/lang/Object;
.source "NoPermission.java"

# interfaces
.implements Lcom/thoughtworks/xstream/security/TypePermission;


# instance fields
.field private final permission:Lcom/thoughtworks/xstream/security/TypePermission;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/security/TypePermission;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/thoughtworks/xstream/security/NoPermission;->permission:Lcom/thoughtworks/xstream/security/TypePermission;

    return-void
.end method


# virtual methods
.method public allows(Ljava/lang/Class;)Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/thoughtworks/xstream/security/NoPermission;->permission:Lcom/thoughtworks/xstream/security/TypePermission;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/security/TypePermission;->allows(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 35
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/security/ForbiddenClassException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/ForbiddenClassException;-><init>(Ljava/lang/Class;)V

    throw v0
.end method
