.class public Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "StackTraceElementConverter.java"


# static fields
.field private static final FACTORY:Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field static synthetic class$java$lang$StackTraceElement:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const-string v0, "^(.+)\\.([^\\(]+)\\(([^:]*)(:(\\d+))?\\)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;->PATTERN:Ljava/util/regex/Pattern;

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "factory":Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const/4 v1, 0x0

    const-string v2, "com.thoughtworks.xstream.converters.extended.StackTraceElementFactory15"

    invoke-static {v2, v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v1

    .line 44
    .local v1, "factoryType":Ljava/lang/Class;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 49
    :goto_0
    goto :goto_1

    .line 47
    :catch_0
    move-exception v2

    goto :goto_1

    .line 45
    :catch_1
    move-exception v2

    goto :goto_0

    .line 51
    .end local v1    # "factoryType":Ljava/lang/Class;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 52
    new-instance v1, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;-><init>()V

    move-object v0, v1

    .line 55
    :cond_1
    :try_start_1
    const-string v1, "a"

    const-string v2, "b"

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->unknownSourceElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StackTraceElement;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 58
    :catch_2
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    const/4 v0, 0x0

    goto :goto_3

    .line 56
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 60
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 61
    :goto_3
    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;->FACTORY:Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;

    .line 62
    .end local v0    # "factory":Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 65
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 65
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;->class$java$lang$StackTraceElement:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.StackTraceElement"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;->class$java$lang$StackTraceElement:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;->FACTORY:Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 76
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "declaringClass":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "methodName":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "fileName":Ljava/lang/String;
    const-string v4, "Unknown Source"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    sget-object v4, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;->FACTORY:Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;

    invoke-virtual {v4, v1, v2}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->unknownSourceElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v4

    return-object v4

    .line 82
    :cond_0
    const-string v4, "Native Method"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    sget-object v4, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;->FACTORY:Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;

    invoke-virtual {v4, v1, v2}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->nativeMethodElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v4

    return-object v4

    .line 85
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 86
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 87
    .local v4, "lineNumber":I
    sget-object v5, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;->FACTORY:Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StackTraceElement;

    move-result-object v5

    return-object v5

    .line 89
    .end local v4    # "lineNumber":I
    :cond_2
    sget-object v4, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;->FACTORY:Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;

    invoke-virtual {v4, v1, v2, v3}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v4

    return-object v4

    .line 93
    .end local v1    # "declaringClass":Ljava/lang/String;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not parse StackTraceElement : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 69
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "s":Ljava/lang/String;
    const-string v1, ":\\?\\?\\?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
