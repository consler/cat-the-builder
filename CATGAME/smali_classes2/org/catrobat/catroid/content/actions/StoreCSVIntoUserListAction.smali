.class public final Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "StoreCSVIntoUserListAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\"\u0010\u001c\u001a\u00020\u001d2\u0012\u0010\u001e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0 0\u001f2\u0006\u0010!\u001a\u00020\"J\u0012\u0010#\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0017\u0010$\u001a\u0004\u0018\u00010\"2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010%J\u001c\u0010&\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0 \u0018\u00010\u001f2\u0006\u0010\'\u001a\u00020(J\u0010\u0010)\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020+H\u0014R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006,"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;",
        "()V",
        "formulaCSVData",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getFormulaCSVData",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setFormulaCSVData",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "formulaColumnToExtract",
        "getFormulaColumnToExtract",
        "setFormulaColumnToExtract",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "getScope",
        "()Lorg/catrobat/catroid/content/Scope;",
        "setScope",
        "(Lorg/catrobat/catroid/content/Scope;)V",
        "userList",
        "Lorg/catrobat/catroid/formulaeditor/UserList;",
        "getUserList",
        "()Lorg/catrobat/catroid/formulaeditor/UserList;",
        "setUserList",
        "(Lorg/catrobat/catroid/formulaeditor/UserList;)V",
        "extractOrReplaceSeperator",
        "",
        "csvData",
        "",
        "insertColumnValuesIntoUserList",
        "",
        "allRows",
        "",
        "",
        "columnToExtract",
        "",
        "interpretCSVData",
        "interpretColumnToExtract",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)Ljava/lang/Integer;",
        "readCSVIntoList",
        "csvReader",
        "Lcom/opencsv/CSVReader;",
        "update",
        "percent",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private formulaCSVData:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private formulaColumnToExtract:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private userList:Lorg/catrobat/catroid/formulaeditor/UserList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final extractOrReplaceSeperator(Ljava/lang/String;)C
    .locals 5
    .param p1, "csvData"    # Ljava/lang/String;

    const-string v0, "csvData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    const/16 v0, 0x2c

    .line 91
    .local v0, "separator":C
    const-string v1, "^(?:\".*?\"|[^,;]*?)([,;])"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 92
    .local v1, "pattern":Ljava/util/regex/Pattern;
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 93
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 96
    :cond_0
    const/16 v3, 0x2c

    if-eq v0, v3, :cond_1

    const/16 v3, 0x3b

    if-eq v0, v3, :cond_1

    .line 97
    const/16 v0, 0x2c

    .line 99
    :cond_1
    return v0
.end method

.method public final getFormulaCSVData()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->formulaCSVData:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getFormulaColumnToExtract()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->formulaColumnToExtract:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public final getUserList()Lorg/catrobat/catroid/formulaeditor/UserList;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    return-object v0
.end method

.method public final insertColumnValuesIntoUserList(Ljava/util/List;I)V
    .locals 5
    .param p1, "allRows"    # Ljava/util/List;
    .param p2, "columnToExtract"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "allRows"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x1

    .line 116
    .local v0, "resetList":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 117
    .local v2, "row":[Ljava/lang/String;
    array-length v3, v2

    if-gt v3, p2, :cond_0

    .line 118
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/formulaeditor/UserList;->addListItem(Ljava/lang/Object;)V

    goto :goto_1

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 121
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    if-eqz v3, :cond_1

    aget-object v4, v2, p2

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/formulaeditor/UserList;->addListItem(Ljava/lang/Object;)V

    .line 122
    .end local v2    # "row":[Ljava/lang/String;
    :cond_1
    :goto_1
    nop

    .line 116
    goto :goto_0

    .line 124
    :cond_2
    if-eqz v0, :cond_3

    .line 125
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserList;->reset()V

    .line 127
    :cond_3
    return-void
.end method

.method public final interpretCSVData(Lorg/catrobat/catroid/formulaeditor/Formula;)Ljava/lang/String;
    .locals 5
    .param p1, "formulaCSVData"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 72
    nop

    .line 73
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {p1, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretString(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "exception":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Couldn\'t interpret formula"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .end local v1    # "exception":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public final interpretColumnToExtract(Lorg/catrobat/catroid/formulaeditor/Formula;)Ljava/lang/Integer;
    .locals 5
    .param p1, "formulaColumnToExtract"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 81
    nop

    .line 82
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {p1, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "exception":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Couldn\'t interpret formula"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v1    # "exception":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public final readCSVIntoList(Lcom/opencsv/CSVReader;)Ljava/util/List;
    .locals 5
    .param p1, "csvReader"    # Lcom/opencsv/CSVReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/CSVReader;",
            ")",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "csvReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    nop

    .line 104
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/opencsv/CSVReader;->readAll()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/opencsv/exceptions/CsvException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "exception":Lcom/opencsv/exceptions/CsvException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Couldn\'t validate csv data"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    goto :goto_0

    .line 105
    .end local v1    # "exception":Lcom/opencsv/exceptions/CsvException;
    :catch_1
    move-exception v1

    .line 106
    .local v1, "exception":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Couldn\'t read csv data"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    nop

    .line 103
    .end local v1    # "exception":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public final setFormulaCSVData(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 44
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->formulaCSVData:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setFormulaColumnToExtract(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 43
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->formulaColumnToExtract:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 41
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method

.method public final setUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 46
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    return-void
.end method

.method protected update(F)V
    .locals 7
    .param p1, "percent"    # F

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    if-eqz v0, :cond_5

    .line 51
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserList;->reset()V

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->formulaCSVData:Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->interpretCSVData(Lorg/catrobat/catroid/formulaeditor/Formula;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 55
    .local v0, "csvData":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->formulaColumnToExtract:Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->interpretColumnToExtract(Lorg/catrobat/catroid/formulaeditor/Formula;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 56
    .local v1, "columnToExtract":I
    add-int/lit8 v1, v1, -0x1

    .line 58
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->extractOrReplaceSeperator(Ljava/lang/String;)C

    move-result v2

    .line 60
    .local v2, "separator":C
    new-instance v3, Lcom/opencsv/CSVParserBuilder;

    invoke-direct {v3}, Lcom/opencsv/CSVParserBuilder;-><init>()V

    invoke-virtual {v3, v2}, Lcom/opencsv/CSVParserBuilder;->withSeparator(C)Lcom/opencsv/CSVParserBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/opencsv/CSVParserBuilder;->build()Lcom/opencsv/CSVParser;

    move-result-object v3

    .line 61
    .local v3, "csvParser":Lcom/opencsv/CSVParser;
    nop

    .line 62
    nop

    .line 61
    new-instance v4, Lcom/opencsv/CSVReaderBuilder;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/io/Reader;

    invoke-direct {v4, v5}, Lcom/opencsv/CSVReaderBuilder;-><init>(Ljava/io/Reader;)V

    move-object v5, v3

    check-cast v5, Lcom/opencsv/ICSVParser;

    invoke-virtual {v4, v5}, Lcom/opencsv/CSVReaderBuilder;->withCSVParser(Lcom/opencsv/ICSVParser;)Lcom/opencsv/CSVReaderBuilder;

    move-result-object v4

    .line 62
    invoke-virtual {v4}, Lcom/opencsv/CSVReaderBuilder;->build()Lcom/opencsv/CSVReader;

    move-result-object v4

    .line 61
    nop

    .line 64
    .local v4, "csvReader":Lcom/opencsv/CSVReader;
    const-string v5, "csvReader"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->readCSVIntoList(Lcom/opencsv/CSVReader;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 66
    .local v5, "allRows":Ljava/util/List;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    if-ltz v1, :cond_1

    .line 67
    invoke-virtual {p0, v5, v1}, Lorg/catrobat/catroid/content/actions/StoreCSVIntoUserListAction;->insertColumnValuesIntoUserList(Ljava/util/List;I)V

    .line 69
    :cond_1
    return-void

    .line 64
    .end local v5    # "allRows":Ljava/util/List;
    :cond_2
    return-void

    .line 55
    .end local v1    # "columnToExtract":I
    .end local v2    # "separator":C
    .end local v3    # "csvParser":Lcom/opencsv/CSVParser;
    .end local v4    # "csvReader":Lcom/opencsv/CSVReader;
    :cond_3
    return-void

    .line 53
    .end local v0    # "csvData":Ljava/lang/String;
    :cond_4
    return-void

    .line 49
    :cond_5
    return-void
.end method
