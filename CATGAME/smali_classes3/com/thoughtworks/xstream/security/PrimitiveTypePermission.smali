.class public Lcom/thoughtworks/xstream/security/PrimitiveTypePermission;
.super Ljava/lang/Object;
.source "PrimitiveTypePermission.java"

# interfaces
.implements Lcom/thoughtworks/xstream/security/TypePermission;


# static fields
.field public static final PRIMITIVES:Lcom/thoughtworks/xstream/security/TypePermission;

.field static synthetic class$com$thoughtworks$xstream$security$PrimitiveTypePermission:Ljava/lang/Class;

.field static synthetic class$java$lang$Void:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/thoughtworks/xstream/security/PrimitiveTypePermission;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/security/PrimitiveTypePermission;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/security/PrimitiveTypePermission;->PRIMITIVES:Lcom/thoughtworks/xstream/security/TypePermission;

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

    .line 25
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

    if-eqz p1, :cond_1

    .line 25
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/thoughtworks/xstream/security/PrimitiveTypePermission;->class$java$lang$Void:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Void"

    invoke-static {v0}, Lcom/thoughtworks/xstream/security/PrimitiveTypePermission;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/security/PrimitiveTypePermission;->class$java$lang$Void:Ljava/lang/Class;

    :cond_0
    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 26
    :cond_1
    invoke-static {p1}, Lcom/thoughtworks/xstream/core/util/Primitives;->isBoxed(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Lcom/thoughtworks/xstream/security/PrimitiveTypePermission;->class$com$thoughtworks$xstream$security$PrimitiveTypePermission:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.thoughtworks.xstream.security.PrimitiveTypePermission"

    invoke-static {v0}, Lcom/thoughtworks/xstream/security/PrimitiveTypePermission;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/security/PrimitiveTypePermission;->class$com$thoughtworks$xstream$security$PrimitiveTypePermission:Ljava/lang/Class;

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

    const/4 v0, 0x7

    return v0
.end method
