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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/opencsv/bean/AbstractBeanField;->required:Z

    .line 90
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;)V
    .locals 0
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/opencsv/bean/AbstractBeanField;->type:Ljava/lang/Class;

    .line 107
    iput-object p2, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    .line 108
    iput-boolean p3, p0, Lcom/opencsv/bean/AbstractBeanField;->required:Z

    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p4, p1}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    .line 111
    iput-object p5, p0, Lcom/opencsv/bean/AbstractBeanField;->converter:Lcom/opencsv/bean/CsvConverter;

    .line 112
    new-instance p1, Lcom/opencsv/bean/FieldAccess;

    iget-object p2, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    invoke-direct {p1, p2}, Lcom/opencsv/bean/FieldAccess;-><init>(Ljava/lang/reflect/Field;)V

    iput-object p1, p0, Lcom/opencsv/bean/AbstractBeanField;->fieldAccess:Lcom/opencsv/bean/FieldAccess;

    return-void
.end method

.method private preProcessValue(Lcom/opencsv/bean/processor/PreAssignmentProcessor;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 185
    :try_start_0
    invoke-interface {p1}, Lcom/opencsv/bean/processor/PreAssignmentProcessor;->processor()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/processor/StringProcessor;

    .line 186
    invoke-interface {p1}, Lcom/opencsv/bean/processor/PreAssignmentProcessor;->paramString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-interface {p1}, Lcom/opencsv/bean/processor/PreAssignmentProcessor;->paramString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/opencsv/bean/processor/StringProcessor;->setParameterString(Ljava/lang/String;)V

    .line 189
    :cond_0
    invoke-interface {v0, p2}, Lcom/opencsv/bean/processor/StringProcessor;->processString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 191
    :catch_0
    new-instance p2, Lcom/opencsv/exceptions/CsvValidationException;

    const-string v0, "opencsv"

    iget-object v1, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    .line 192
    invoke-static {v0, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "validator.instantiation.impossible"

    .line 193
    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 194
    invoke-interface {p1}, Lcom/opencsv/bean/processor/PreAssignmentProcessor;->processor()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 191
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/opencsv/exceptions/CsvValidationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private validateValue(Lcom/opencsv/bean/validators/PreAssignmentValidator;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 200
    :try_start_0
    invoke-interface {p1}, Lcom/opencsv/bean/validators/PreAssignmentValidator;->validator()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/validators/StringValidator;

    .line 201
    invoke-interface {p1}, Lcom/opencsv/bean/validators/PreAssignmentValidator;->paramString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

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
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 206
    :catch_0
    new-instance p2, Lcom/opencsv/exceptions/CsvValidationException;

    const-string v0, "opencsv"

    iget-object v1, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    .line 207
    invoke-static {v0, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "validator.instantiation.impossible"

    .line 208
    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 209
    invoke-interface {p1}, Lcom/opencsv/bean/validators/PreAssignmentValidator;->validator()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 206
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/opencsv/exceptions/CsvValidationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method protected assignValueToField(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 288
    :try_start_0
    iget-object p3, p0, Lcom/opencsv/bean/AbstractBeanField;->fieldAccess:Lcom/opencsv/bean/FieldAccess;

    invoke-virtual {p3, p1, p2}, Lcom/opencsv/bean/FieldAccess;->setField(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 296
    new-instance p3, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    .line 297
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p3, p2, v0}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 298
    invoke-virtual {p3, p1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 299
    throw p3

    :catch_1
    move-exception p2

    goto :goto_0

    :catch_2
    move-exception p2

    .line 290
    :goto_0
    new-instance p3, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;

    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    .line 292
    invoke-virtual {p2}, Ljava/lang/ReflectiveOperationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, p1, v0, v1}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p3, p2}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 294
    throw p3

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    const-string v0, ""

    .line 403
    invoke-static {p1, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getErrorLocale()Ljava/util/Locale;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->fieldAccess:Lcom/opencsv/bean/FieldAccess;

    invoke-virtual {v0, p1}, Lcom/opencsv/bean/FieldAccess;->getField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 223
    :goto_0
    new-instance v1, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;

    iget-object v2, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    const-string v3, "opencsv"

    iget-object v4, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    .line 225
    invoke-static {v3, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3

    const-string v4, "error.introspecting.field"

    .line 227
    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    .line 228
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 225
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1, v0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 230
    throw v1
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
    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public indexAndSplitMultivaluedField(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
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

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    return-object p2
.end method

.method protected isFieldEmptyForWrite(Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRequired()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/opencsv/bean/AbstractBeanField;->required:Z

    return v0
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .locals 1

    .line 146
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    .line 147
    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->converter:Lcom/opencsv/bean/CsvConverter;

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0, p1}, Lcom/opencsv/bean/CsvConverter;->setErrorLocale(Ljava/util/Locale;)V

    :cond_0
    return-void
.end method

.method public setField(Ljava/lang/reflect/Field;)V
    .locals 1

    .line 125
    iput-object p1, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    .line 126
    new-instance p1, Lcom/opencsv/bean/FieldAccess;

    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    invoke-direct {p1, v0}, Lcom/opencsv/bean/FieldAccess;-><init>(Ljava/lang/reflect/Field;)V

    iput-object p1, p0, Lcom/opencsv/bean/AbstractBeanField;->fieldAccess:Lcom/opencsv/bean/FieldAccess;

    return-void
.end method

.method public final setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;,
            Lcom/opencsv/exceptions/CsvConstraintViolationException;,
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 161
    iget-boolean v0, p0, Lcom/opencsv/bean/AbstractBeanField;->required:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    new-instance p2, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object p3, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    const-string v0, "opencsv"

    iget-object v2, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    .line 164
    invoke-static {v0, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v2, "required.field.empty"

    invoke-virtual {v0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    .line 165
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 164
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, p3, v0}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    throw p2

    .line 168
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    const-class v2, Lcom/opencsv/bean/processor/PreAssignmentProcessor;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, [Lcom/opencsv/bean/processor/PreAssignmentProcessor;

    .line 170
    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 171
    invoke-direct {p0, v4, p2}, Lcom/opencsv/bean/AbstractBeanField;->preProcessValue(Lcom/opencsv/bean/processor/PreAssignmentProcessor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    const-class v2, Lcom/opencsv/bean/validators/PreAssignmentValidator;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, [Lcom/opencsv/bean/validators/PreAssignmentValidator;

    .line 176
    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 177
    invoke-direct {p0, v3, p2}, Lcom/opencsv/bean/AbstractBeanField;->validateValue(Lcom/opencsv/bean/validators/PreAssignmentValidator;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 180
    :cond_3
    invoke-virtual {p0, p2}, Lcom/opencsv/bean/AbstractBeanField;->convert(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/opencsv/bean/AbstractBeanField;->assignValueToField(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setRequired(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/opencsv/bean/AbstractBeanField;->required:Z

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
    iput-object p1, p0, Lcom/opencsv/bean/AbstractBeanField;->type:Ljava/lang/Class;

    return-void
.end method

.method public final write(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/String;
    .locals 5
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

    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p0, p1}, Lcom/opencsv/bean/AbstractBeanField;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 339
    :goto_0
    iget-boolean v1, p0, Lcom/opencsv/bean/AbstractBeanField;->required:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/opencsv/bean/AbstractBeanField;->isFieldEmptyForWrite(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 340
    :cond_1
    new-instance p1, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    iget-object p2, p0, Lcom/opencsv/bean/AbstractBeanField;->type:Ljava/lang/Class;

    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    const-string v1, "opencsv"

    iget-object v3, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    .line 341
    invoke-static {v1, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v3, "required.field.empty"

    .line 343
    invoke-virtual {v1, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    .line 344
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 341
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    throw p1

    .line 348
    :cond_2
    :goto_1
    invoke-virtual {p0, v0, p2}, Lcom/opencsv/bean/AbstractBeanField;->indexAndSplitMultivaluedField(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 349
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 351
    :goto_2
    :try_start_0
    array-length v1, p2

    if-ge v2, v1, :cond_3

    .line 352
    aget-object v1, p2, v2

    invoke-virtual {p0, v1}, Lcom/opencsv/bean/AbstractBeanField;->convertToWrite(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2
    :try_end_0
    .catch Lcom/opencsv/exceptions/CsvDataTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0

    :catch_0
    move-exception p2

    .line 365
    new-instance v0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    .line 366
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v1, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p2}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 368
    throw v0

    :catch_1
    move-exception p2

    .line 356
    new-instance v0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v1, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    .line 357
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 359
    throw v0
.end method
