.class public Lcom/thoughtworks/xstream/security/RegExpTypePermission;
.super Ljava/lang/Object;
.source "RegExpTypePermission.java"

# interfaces
.implements Lcom/thoughtworks/xstream/security/TypePermission;


# instance fields
.field private final patterns:[Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-static {p1}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;->getPatterns([Ljava/lang/String;)[Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;-><init>([Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public constructor <init>([Ljava/util/regex/Pattern;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/util/regex/Pattern;

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/security/RegExpTypePermission;->patterns:[Ljava/util/regex/Pattern;

    return-void
.end method

.method private static getPatterns([Ljava/lang/String;)[Ljava/util/regex/Pattern;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_0
    array-length v0, p0

    new-array v1, v0, [Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 45
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public allows(Ljava/lang/Class;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    move v1, v0

    .line 33
    :goto_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/security/RegExpTypePermission;->patterns:[Ljava/util/regex/Pattern;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 34
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
