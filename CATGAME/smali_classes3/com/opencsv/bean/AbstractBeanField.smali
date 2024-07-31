.class public abstract Lcom/opencsv/bean/AbstractBeanField;
.super Ljava/lang/Object;
.source "AbstractBeanField.java"

# interfaces
.implements Lcom/opencsv/bean/BeanField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/opencsv/bean/BeanField<",
        "TT;TI;>;"
    }
.end annotation


# instance fields
.field protected converter:Lcom/opencsv/bean/CsvConverter;

.field protected errorLocale:Ljava/util/Locale;

.field protected field:Ljava/lang/reflect/Field;

.field protected fieldAccess:Lcom/opencsv/bean/FieldAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/FieldAccess<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected required:Z

.field protected type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    .local p0, "this":Lcom/opencsv/bean/AbstractBeanField;, "Lcom/opencsv/bean/AbstractBeanField<TT;TI;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/opencsv/bean/AbstractBeanField;->required:Z

    .line 90
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;)V
    .locals 2
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "required"    # Z
    .param p4, "errorLocale"    # Ljava/util/Locale;
    .param p5, "converter"    # Lcom/opencsv/bean/CsvConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/util/Locale;",
            "Lcom/opencsv/bean/CsvConverter;",
            ")V"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/opencsv/bean/AbstractBeanField;, "Lcom/opencsv/bean/AbstractBeanField<TT;TI;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/opencsv/bean/AbstractBeanField;->type:Ljava/lang/Class;

    .line 107
    iput-object p2, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    .line 108
    iput-boolean p3, p0, Lcom/opencsv/bean/AbstractBeanField;->required:Z

    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p4, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    .line 111
    iput-object p5, p0, Lcom/opencsv/bean/AbstractBeanField;->converter:Lcom/opencsv/bean/CsvConverter;

    .line 112
    new-instance v0, Lcom/opencsv/bean/FieldAccess;

    iget-object v1, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    invoke-direct {v0, v1}, Lcom/opencsv/bean/FieldAccess;-><init>(Ljava/lang/reflect/Field;)V

    iput-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->fieldAccess:Lcom/opencsv/bean/FieldAccess;

    .line 113
    return-void
.end method

.method private preProcessValue(Lcom/opencsv/bean/processor/PreAssignmentProcessor;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "processor"    # Lcom/opencsv/bean/processor/PreAssignmentProcessor;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 185
    .local p0, "this":Lcom/opencsv/bean/AbstractBeanField;, "Lcom/opencsv/bean/AbstractBeanField<TT;TI;>;"
    :try_start_0
    invoke-interface {p1}, Lcom/opencsv/bean/processor/PreAssignmentProcessor;->processor()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/processor/StringProcessor;

    .line 186
    .local v0, "stringProcessor":Lcom/opencsv/bean/processor/StringProcessor;
    invoke-interface {p1}, Lcom/opencsv/bean/processor/PreAssignmentProcessor;->paramString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, L$r8$backportedMethods$utility$Objects$1$nonNull;->nonNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-interface {p1}, Lcom/opencsv/bean/processor/PreAssignmentProcessor;->paramString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/opencsv/bean/processor/StringProcessor;->setParameterString(Ljava/lang/String;)V

    .line 189
    :cond_0
    invoke-interface {v0, p2}, Lcom/opencsv/bean/processor/StringProcessor;->processString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 190
    .end local v0    # "stringProcessor":Lcom/opencsv/bean/processor/StringProcessor;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Lcom/opencsv/exceptions/CsvValidationException;

    iget-object v2, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    .line 192
    const-string v3, "opencsv"

    invoke-static {v3, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    .line 193
    const-string v3, "validator.instantiation.impossible"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 194
    invoke-interface {p1}, Lcom/opencsv/bean/processor/PreAssignmentProcessor;->processor()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 191
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/opencsv/exceptions/CsvValidationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private validateValue(Lcom/opencsv/bean/validators/PreAssignmentValidator;Ljava/lang/String;)V
    .locals 6
    .param p1, "validator"    # Lcom/opencsv/bean/validators/PreAssignmentValidator;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/opencsv/bean/AbstractBeanField;, "Lcom/opencsv/bean/AbstractBeanField<TT;TI;>;"
    :try_start_0
    invoke-interface {p1}, Lcom/opencsv/bean/validators/PreAssignmentValidator;->validator()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/validators/StringValidator;

    .line 201
    .local v0, "stringValidator":Lcom/opencsv/bean/validators/StringValidator;
    invoke-interface {p1}, Lcom/opencsv/bean/validators/PreAssignmentValidator;->paramString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, L$r8$backportedMethods$utility$Objects$1$nonNull;->nonNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-interface {p1}, Lcom/opencsv/bean/validators/PreAssignmentValidator;->paramString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/opencsv/bean/validators/StringValidator;->setParameterString(Ljava/lang/String;)V

    .line 204
    :cond_0
    invoke-interface {v0, p2, p0}, Lcom/opencsv/bean/validators/StringValidator;->validate(Ljava/lang/String;Lcom/opencsv/bean/BeanField;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v0    # "stringValidator":Lcom/opencsv/bean/validators/StringValidator;
    nop

    .line 211
    return-void

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Lcom/opencsv/exceptions/CsvValidationException;

    iget-object v2, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    .line 207
    const-string v3, "opencsv"

    invoke-static {v3, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    .line 208
    const-string v3, "validator.instantiation.impossible"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 209
    invoke-interface {p1}, Lcom/opencsv/bean/validators/PreAssignmentValidator;->validator()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 206
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/opencsv/exceptions/CsvValidationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected assignValueToField(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    .line 286
    .local p0, "this":Lcom/opencsv/bean/AbstractBeanField;, "Lcom/opencsv/bean/AbstractBeanField<TT;TI;>;"
    if-eqz p2, :cond_0

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->fieldAccess:Lcom/opencsv/bean/FieldAccess;

    invoke-virtual {v0, p1, p2}, Lcom/opencsv/bean/FieldAccess;->setField(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    goto :goto_1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e2":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v2, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    .line 297
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 298
    .local v1, "csve":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    invoke-virtual {v1, v0}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 299
    throw v1

    .line 289
    .end local v0    # "e2":Ljava/lang/IllegalArgumentException;
    .end local v1    # "csve":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;

    iget-object v2, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    .line 292
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 293
    .local v1, "csve":Lcom/opencsv/exceptions/CsvBeanIntrospectionException;
    invoke-virtual {v1, v0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 294
    throw v1

    .line 302
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    .end local v1    # "csve":Lcom/opencsv/exceptions/CsvBeanIntrospectionException;
    :cond_0
    :goto_1
    return-void
.end method

.method protected abstract convert(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvConstraintViolationException;
        }
    .end annotation
.end method

.method protected convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    .line 403
    .local p0, "this":Lcom/opencsv/bean/AbstractBeanField;, "Lcom/opencsv/bean/AbstractBeanField<TT;TI;>;"
    const-string v0, ""

    invoke-static {p1, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorLocale()Ljava/util/Locale;
    .locals 1

    .line 154
    .local p0, "this":Lcom/opencsv/bean/AbstractBeanField;, "Lcom/opencsv/bean/AbstractBeanField<TT;TI;>;"
    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .line 131
    .local p0, "this":Lcom/opencsv/bean/AbstractBeanField;, "Lcom/opencsv/bean/AbstractBeanField<TT;TI;>;"
    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "bean"    # Ljava/lang/Object;

    .line 215
    .local p0, "this":Lcom/opencsv/bean/AbstractBeanField;, "Lcom/opencsv/bean/AbstractBeanField<TT;TI;>;"
    const/4 v0, 0x0

    .line 217
    .local v0, "o":Ljava/lang/Object;
    :try_start_0
    iget-object v1, p0, Lcom/opencsv/bean/AbstractBeanField;->fieldAccess:Lcom/opencsv/bean/FieldAccess;

    invoke-virtual {v1, p1}, Lcom/opencsv/bean/FieldAccess;->getField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 231
    nop

    .line 232
    return-object v0

    .line 219
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v2, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;

    iget-object v3, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    iget-object v4, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    .line 225
    const-string v5, "opencsv"

    invoke-static {v5, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    .line 227
    const-string v5, "error.introspecting.field"

    invoke-virtual {v4, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    .line 228
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 225
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 229
    .local v2, "csve":Lcom/opencsv/exceptions/CsvBeanIntrospectionException;
    invoke-virtual {v2, v1}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 230
    throw v2
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/opencsv/bean/AbstractBeanField;, "Lcom/opencsv/bean/AbstractBeanField<TT;TI;>;"
    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public indexAndSplitMultivaluedField(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TI;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    .line 244
    .local p0, "this":Lcom/opencsv/bean/AbstractBeanField;, "Lcom/opencsv/bean/AbstractBeanField<TT;TI;>;"
    .local p2, "index":Ljava/lang/Object;, "TI;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method

.method protected isFieldEmptyForWrite(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 264
    .local p0, "this":Lcom/opencsv/bean/AbstractBeanField;, "Lcom/opencsv/bean/AbstractBeanField<TT;TI;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequired()Z
    .locals 1

    .line 136
    .local p0, "this":Lcom/opencsv/bean/AbstractBeanField;, "Lcom/opencsv/bean/AbstractBeanField<TT;TI;>;"
    iget-boolean v0, p0, Lcom/opencsv/bean/AbstractBeanField;->required:Z

    return v0
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .locals 2
    .param p1, "errorLocale"    # Ljava/util/Locale;

    .line 146
    .local p0, "this":Lcom/opencsv/bean/AbstractBeanField;, "Lcom/opencsv/bean/AbstractBeanField<TT;TI;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    .line 147
    iget-object v1, p0, Lcom/opencsv/bean/AbstractBeanField;->converter:Lcom/opencsv/bean/CsvConverter;

    if-eqz v1, :cond_0

    .line 148
    invoke-interface {v1, v0}, Lcom/opencsv/bean/CsvConverter;->setErrorLocale(Ljava/util/Locale;)V

    .line 150
    :cond_0
    return-void
.end method

.method public setField(Ljava/lang/reflect/Field;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 125
    .local p0, "this":Lcom/opencsv/bean/AbstractBeanField;, "Lcom/opencsv/bean/AbstractBeanField<TT;TI;>;"
    iput-object p1, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    .line 126
    new-instance v0, Lcom/opencsv/bean/FieldAccess;

    invoke-direct {v0, p1}, Lcom/opencsv/bean/FieldAccess;-><init>(Ljava/lang/reflect/Field;)V

    iput-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->fieldAccess:Lcom/opencsv/bean/FieldAccess;

    .line 127
    return-void
.end method

.method public final setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;,
            Lcom/opencsv/exceptions/CsvConstraintViolationException;,
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 161
    .local p0, "this":Lcom/opencsv/bean/AbstractBeanField;, "Lcom/opencsv/bean/AbstractBeanField<TT;TI;>;"
    iget-boolean v0, p0, Lcom/opencsv/bean/AbstractBeanField;->required:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    new-instance v0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    iget-object v4, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    .line 164
    const-string v5, "opencsv"

    invoke-static {v5, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    const-string v5, "required.field.empty"

    invoke-virtual {v4, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    .line 165
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 164
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    const-class v2, Lcom/opencsv/bean/processor/PreAssignmentProcessor;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, [Lcom/opencsv/bean/processor/PreAssignmentProcessor;

    .line 170
    .local v0, "processors":[Lcom/opencsv/bean/processor/PreAssignmentProcessor;
    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 171
    .local v4, "processor":Lcom/opencsv/bean/processor/PreAssignmentProcessor;
    invoke-direct {p0, v4, p2}, Lcom/opencsv/bean/AbstractBeanField;->preProcessValue(Lcom/opencsv/bean/processor/PreAssignmentProcessor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 170
    .end local v4    # "processor":Lcom/opencsv/bean/processor/PreAssignmentProcessor;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 174
    :cond_2
    iget-object v2, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    const-class v3, Lcom/opencsv/bean/validators/PreAssignmentValidator;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, [Lcom/opencsv/bean/validators/PreAssignmentValidator;

    .line 176
    .local v2, "validators":[Lcom/opencsv/bean/validators/PreAssignmentValidator;
    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 177
    .local v4, "validator":Lcom/opencsv/bean/validators/PreAssignmentValidator;
    invoke-direct {p0, v4, p2}, Lcom/opencsv/bean/AbstractBeanField;->validateValue(Lcom/opencsv/bean/validators/PreAssignmentValidator;Ljava/lang/String;)V

    .line 176
    .end local v4    # "validator":Lcom/opencsv/bean/validators/PreAssignmentValidator;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 180
    :cond_3
    invoke-virtual {p0, p2}, Lcom/opencsv/bean/AbstractBeanField;->convert(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/opencsv/bean/AbstractBeanField;->assignValueToField(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public setRequired(Z)V
    .locals 0
    .param p1, "required"    # Z

    .line 141
    .local p0, "this":Lcom/opencsv/bean/AbstractBeanField;, "Lcom/opencsv/bean/AbstractBeanField<TT;TI;>;"
    iput-boolean p1, p0, Lcom/opencsv/bean/AbstractBeanField;->required:Z

    .line 142
    return-void
.end method

.method public setType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 121
    .local p0, "this":Lcom/opencsv/bean/AbstractBeanField;, "Lcom/opencsv/bean/AbstractBeanField<TT;TI;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/opencsv/bean/AbstractBeanField;->type:Ljava/lang/Class;

    return-void
.end method

.method public final write(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/String;
    .locals 8
    .param p1, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TI;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    .line 338
    .local p0, "this":Lcom/opencsv/bean/AbstractBeanField;, "Lcom/opencsv/bean/AbstractBeanField<TT;TI;>;"
    .local p2, "index":Ljava/lang/Object;, "TI;"
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/AbstractBeanField;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 339
    .local v0, "value":Ljava/lang/Object;
    :goto_0
    iget-boolean v1, p0, Lcom/opencsv/bean/AbstractBeanField;->required:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/opencsv/bean/AbstractBeanField;->isFieldEmptyForWrite(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 340
    :cond_1
    new-instance v1, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    iget-object v2, p0, Lcom/opencsv/bean/AbstractBeanField;->type:Ljava/lang/Class;

    iget-object v3, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    iget-object v4, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    .line 341
    const-string v5, "opencsv"

    invoke-static {v5, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    .line 343
    const-string v5, "required.field.empty"

    invoke-virtual {v4, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    .line 344
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 341
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_2
    :goto_1
    invoke-virtual {p0, v0, p2}, Lcom/opencsv/bean/AbstractBeanField;->indexAndSplitMultivaluedField(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 349
    .local v1, "multivalues":[Ljava/lang/Object;
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 351
    .local v2, "intermediateResult":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    :try_start_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 352
    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/opencsv/bean/AbstractBeanField;->convertToWrite(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Lcom/opencsv/exceptions/CsvDataTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 354
    .end local v3    # "i":I
    :cond_3
    move-object v3, v2

    .line 369
    .local v3, "result":[Ljava/lang/String;
    nop

    .line 370
    return-object v3

    .line 360
    .end local v3    # "result":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 365
    .local v3, "e":Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
    new-instance v4, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    .line 366
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 367
    .local v4, "csve":Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
    invoke-virtual {v3}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 368
    throw v4

    .line 355
    .end local v3    # "e":Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
    .end local v4    # "csve":Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
    :catch_1
    move-exception v3

    .line 356
    .local v3, "e":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    new-instance v4, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v5, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    .line 357
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p1, v5, v6}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 358
    .local v4, "csve":Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
    invoke-virtual {v3}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 359
    throw v4
.end method
