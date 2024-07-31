.class public Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;
.super Ljava/lang/Object;
.source "StackTraceElementFactory.java"


# static fields
.field static synthetic class$java$lang$StackTraceElement:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 56
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

.method private setField(Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/StackTraceElement;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->class$java$lang$StackTraceElement:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.StackTraceElement"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->class$java$lang$StackTraceElement:Ljava/lang/Class;

    :cond_0
    invoke-static {v0, p2}, Lcom/thoughtworks/xstream/core/util/Fields;->find(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 57
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-static {v0, p1, p3}, Lcom/thoughtworks/xstream/core/util/Fields;->write(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StackTraceElement;
    .locals 3
    .param p1, "declaringClass"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "lineNumber"    # I

    .line 47
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 48
    .local v0, "result":Ljava/lang/StackTraceElement;
    const-string v1, "declaringClass"

    invoke-direct {p0, v0, v1, p1}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->setField(Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    const-string v1, "methodName"

    invoke-direct {p0, v0, v1, p2}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->setField(Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    const-string v1, "fileName"

    invoke-direct {p0, v0, v1, p3}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->setField(Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "lineNumber"

    invoke-direct {p0, v0, v2, v1}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->setField(Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-object v0
.end method

.method public element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StackTraceElement;
    .locals 1
    .param p1, "declaringClass"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StackTraceElement;
    .locals 1
    .param p1, "declaringClass"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "lineNumber"    # I

    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public nativeMethodElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StackTraceElement;
    .locals 2
    .param p1, "declaringClass"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;

    .line 29
    const-string v0, "Native Method"

    const/4 v1, -0x2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public unknownSourceElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StackTraceElement;
    .locals 2
    .param p1, "declaringClass"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;

    .line 33
    const-string v0, "Unknown Source"

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method
