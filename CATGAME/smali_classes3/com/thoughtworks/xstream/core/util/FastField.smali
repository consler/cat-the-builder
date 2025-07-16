.class public final Lcom/thoughtworks/xstream/core/util/FastField;
.super Ljava/lang/Object;
.source "FastField.java"


# instance fields
.field private final declaringClass:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/FastField;->name:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 41
    :cond_1
    instance-of v2, p1, Lcom/thoughtworks/xstream/core/util/FastField;

    if-eqz v2, :cond_7

    .line 42
    check-cast p1, Lcom/thoughtworks/xstream/core/util/FastField;

    .line 43
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v3, p1, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    if-nez v3, :cond_3

    :cond_2
    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_3
    return v1

    .line 47
    :cond_4
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/FastField;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/thoughtworks/xstream/core/util/FastField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 48
    invoke-virtual {p1}, Lcom/thoughtworks/xstream/core/util/FastField;->getDeclaringClass()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0

    :cond_7
    return v1
.end method

.method public getDeclaringClass()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastField;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/FastField;->declaringClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/FastField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
