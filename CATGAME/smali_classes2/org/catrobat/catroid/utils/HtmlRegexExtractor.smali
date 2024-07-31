.class public Lorg/catrobat/catroid/utils/HtmlRegexExtractor;
.super Ljava/lang/Object;
.source "HtmlRegexExtractor.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/catrobat/catroid/utils/HtmlRegexExtractor;->context:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private findKeywordWithHtmlBetweenWordsInText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "keywords"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;

    .line 74
    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "splittedKeywords":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 76
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    .local v1, "keywordsWithHtmlBetweenWords":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 79
    const-string v3, "(\\s|&nbsp;|<[^>]+>)+?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 83
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 86
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private matchesFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;
    .param p3, "expectedMatch"    # Ljava/lang/String;

    .line 119
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 121
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private showError()V
    .locals 2

    .line 56
    iget-object v0, p0, Lorg/catrobat/catroid/utils/HtmlRegexExtractor;->context:Landroid/content/Context;

    const v1, 0x7f1203bb

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 58
    return-void
.end method


# virtual methods
.method public findKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;

    .line 62
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    return-object p1

    .line 68
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/utils/HtmlRegexExtractor;->findKeywordWithHtmlBetweenWordsInText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public htmlToRegexConverter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;

    .line 92
    if-nez p1, :cond_0

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, "keywordIndex":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-gez v0, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    const/4 v1, 0x0

    .line 105
    .local v1, "distance":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 107
    const/4 v2, 0x0

    sub-int v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 108
    .local v2, "beforeKeywordIndex":I
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "beforeKeyword":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    add-int/2addr v4, v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 111
    .local v4, "afterKeywordIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "afterKeyword":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "(.+?)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    .end local v5    # "afterKeyword":Ljava/lang/String;
    .local v3, "regex":Ljava/lang/String;
    invoke-direct {p0, v3, p2, p1}, Lorg/catrobat/catroid/utils/HtmlRegexExtractor;->matchesFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    if-gtz v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 115
    :cond_3
    return-object v3

    .line 97
    .end local v1    # "distance":I
    .end local v2    # "beforeKeywordIndex":I
    .end local v3    # "regex":Ljava/lang/String;
    .end local v4    # "afterKeywordIndex":I
    :cond_4
    :goto_0
    const-string v1, "(.+)"

    return-object v1
.end method

.method public searchKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/utils/HtmlRegexExtractor;->findKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "foundHtmlFormattedKeyword":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/utils/HtmlRegexExtractor;->htmlToRegexConverter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "regex":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 48
    invoke-direct {p0}, Lorg/catrobat/catroid/utils/HtmlRegexExtractor;->showError()V

    .line 49
    const-string v2, ""

    return-object v2

    .line 51
    :cond_0
    return-object v1
.end method
