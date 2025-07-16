.class public Lcom/opencsv/bean/RegexToBeanField;
.super Lcom/opencsv/bean/AbstractFieldMapEntry;
.source "RegexToBeanField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/opencsv/bean/AbstractFieldMapEntry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final regex:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/opencsv/bean/BeanField;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/opencsv/bean/BeanField<",
            "TT;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p2, p3}, Lcom/opencsv/bean/AbstractFieldMapEntry;-><init>(Lcom/opencsv/bean/BeanField;Ljava/util/Locale;)V

    .line 45
    const-class p2, Lcom/opencsv/bean/BeanFieldJoin;

    iget-object p3, p0, Lcom/opencsv/bean/RegexToBeanField;->errorLocale:Ljava/util/Locale;

    const/4 v0, 0x2

    invoke-static {p1, v0, p2, p3}, Lcom/opencsv/bean/OpencsvUtils;->compilePattern(Ljava/lang/String;ILjava/lang/Class;Ljava/util/Locale;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/RegexToBeanField;->regex:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/RegexToBeanField;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/opencsv/bean/RegexToBeanField;->regex:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getInitializer()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/opencsv/bean/RegexToBeanField;->getInitializer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitializer()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/opencsv/bean/RegexToBeanField;->regex:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
