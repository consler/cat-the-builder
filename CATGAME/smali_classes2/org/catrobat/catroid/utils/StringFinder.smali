.class public Lorg/catrobat/catroid/utils/StringFinder;
.super Ljava/lang/Object;
.source "StringFinder.java"


# instance fields
.field private matcherRun:Z

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeSpecialChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 35
    invoke-static {p0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public findBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(.*?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 40
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 42
    .local v1, "matcher":Ljava/util/regex/Matcher;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/catrobat/catroid/utils/StringFinder;->matcherRun:Z

    .line 44
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/catrobat/catroid/utils/StringFinder;->result:Ljava/lang/String;

    .line 46
    return v2

    .line 49
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/catrobat/catroid/utils/StringFinder;->result:Ljava/lang/String;

    .line 50
    const/4 v2, 0x0

    return v2
.end method

.method public getResult()Ljava/lang/String;
    .locals 2

    .line 54
    iget-boolean v0, p0, Lorg/catrobat/catroid/utils/StringFinder;->matcherRun:Z

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/utils/StringFinder;->matcherRun:Z

    .line 59
    iget-object v0, p0, Lorg/catrobat/catroid/utils/StringFinder;->result:Ljava/lang/String;

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call findBetween(String string, String start, String end) first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
