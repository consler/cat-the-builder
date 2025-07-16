.class public Lcom/thoughtworks/xstream/security/NoTypePermission;
.super Ljava/lang/Object;
.source "NoTypePermission.java"

# interfaces
.implements Lcom/thoughtworks/xstream/security/TypePermission;


# static fields
.field public static final NONE:Lcom/thoughtworks/xstream/security/TypePermission;

.field static synthetic class$com$thoughtworks$xstream$security$NoTypePermission:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/thoughtworks/xstream/security/NoTypePermission;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/security/NoTypePermission;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/security/NoTypePermission;->NONE:Lcom/thoughtworks/xstream/security/TypePermission;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 34
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public allows(Ljava/lang/Class;)Z
    .locals 1

    .line 26
    new-instance v0, Lcom/thoughtworks/xstream/security/ForbiddenClassException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/ForbiddenClassException;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Lcom/thoughtworks/xstream/security/NoTypePermission;->class$com$thoughtworks$xstream$security$NoTypePermission:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.thoughtworks.xstream.security.NoTypePermission"

    invoke-static {v0}, Lcom/thoughtworks/xstream/security/NoTypePermission;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/security/NoTypePermission;->class$com$thoughtworks$xstream$security$NoTypePermission:Ljava/lang/Class;

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
