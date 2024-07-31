.class public final Lorg/catrobat/catroid/io/asynctask/ProjectSaverKt;
.super Ljava/lang/Object;
.source "ProjectSaver.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProjectSaver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProjectSaver.kt\norg/catrobat/catroid/io/asynctask/ProjectSaverKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,95:1\n37#2,2:96\n37#2,2:124\n4061#3,11:98\n4061#3,11:126\n1819#4,2:109\n768#4,11:111\n1819#4,2:122\n1819#4,2:137\n768#4,11:139\n1819#4,2:150\n*E\n*S KotlinDebug\n*F\n+ 1 ProjectSaver.kt\norg/catrobat/catroid/io/asynctask/ProjectSaverKt\n*L\n66#1,2:96\n82#1,2:124\n66#1,11:98\n82#1,11:126\n66#1,2:109\n73#1,11:111\n73#1,2:122\n82#1,2:137\n89#1,11:139\n89#1,2:150\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\u0018\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\u0018\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\t"
    }
    d2 = {
        "saveLegoEV3SettingsToProject",
        "",
        "project",
        "Lorg/catrobat/catroid/content/Project;",
        "context",
        "Landroid/content/Context;",
        "saveLegoNXTSettingsToProject",
        "saveProjectSerial",
        "",
        "catroid_catroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private static final saveLegoEV3SettingsToProject(Lorg/catrobat/catroid/content/Project;Landroid/content/Context;)V
    .locals 9
    .param p0, "project"    # Lorg/catrobat/catroid/content/Project;
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getRequiredResources()Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "project.settings"

    if-nez v0, :cond_4

    .line 82
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSettings()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 124
    .local v1, "$i$f$toTypedArray":I
    move-object v2, v0

    .line 125
    .local v2, "thisCollection$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    new-array v4, v3, [Lorg/catrobat/catroid/content/Setting;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 82
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v2    # "thisCollection$iv":Ljava/util/Collection;
    move-object v0, v4

    .local v0, "$this$filterIsInstance$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 126
    .local v1, "$i$f$filterIsInstance":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    .local v4, "$this$filterIsInstanceTo$iv$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 135
    .local v5, "$i$f$filterIsInstanceTo":I
    array-length v6, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v7, v4, v3

    .local v7, "element$iv$iv":Ljava/lang/Object;
    instance-of v8, v7, Lorg/catrobat/catroid/content/LegoEV3Setting;

    if-eqz v8, :cond_0

    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterIsInstanceTo$iv$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$filterIsInstanceTo":I
    check-cast v2, Ljava/util/List;

    .line 126
    nop

    .end local v0    # "$this$filterIsInstance$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$filterIsInstance":I
    check-cast v2, Ljava/lang/Iterable;

    .line 82
    move-object v0, v2

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 137
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/catrobat/catroid/content/LegoEV3Setting;

    .local v4, "setting":Lorg/catrobat/catroid/content/LegoEV3Setting;
    const/4 v5, 0x0

    .line 83
    .local v5, "$i$a$-forEach-ProjectSaverKt$saveLegoEV3SettingsToProject$1":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSettings()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 84
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "setting":Lorg/catrobat/catroid/content/LegoEV3Setting;
    .end local v5    # "$i$a$-forEach-ProjectSaverKt$saveLegoEV3SettingsToProject$1":I
    goto :goto_1

    .line 138
    :cond_2
    nop

    .line 85
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void

    .line 125
    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    .local v1, "$i$f$toTypedArray":I
    .local v2, "thisCollection$iv":Ljava/util/Collection;
    :cond_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 88
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v2    # "thisCollection$iv":Ljava/util/Collection;
    :cond_4
    invoke-static {p1}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getLegoEV3SensorMapping(Landroid/content/Context;)[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    move-result-object v0

    .line 89
    .local v0, "sensorMapping":[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSettings()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 139
    .local v2, "$i$f$filterIsInstance":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 148
    .local v5, "$i$f$filterIsInstanceTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "element$iv$iv":Ljava/lang/Object;
    instance-of v8, v7, Lorg/catrobat/catroid/content/LegoEV3Setting;

    if-eqz v8, :cond_5

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 149
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterIsInstanceTo":I
    check-cast v3, Ljava/util/List;

    .line 139
    nop

    .end local v1    # "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filterIsInstance":I
    check-cast v3, Ljava/lang/Iterable;

    .line 89
    move-object v1, v3

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 150
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/catrobat/catroid/content/LegoEV3Setting;

    .local v4, "setting":Lorg/catrobat/catroid/content/LegoEV3Setting;
    const/4 v5, 0x0

    .line 90
    .local v5, "$i$a$-forEach-ProjectSaverKt$saveLegoEV3SettingsToProject$2":I
    invoke-virtual {v4, v0}, Lorg/catrobat/catroid/content/LegoEV3Setting;->updateMapping([Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;)V

    .line 91
    return-void

    .line 151
    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "setting":Lorg/catrobat/catroid/content/LegoEV3Setting;
    .end local v5    # "$i$a$-forEach-ProjectSaverKt$saveLegoEV3SettingsToProject$2":I
    :cond_7
    nop

    .line 93
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSettings()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/content/LegoEV3Setting;

    invoke-direct {v2, v0}, Lorg/catrobat/catroid/content/LegoEV3Setting;-><init>([Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method private static final saveLegoNXTSettingsToProject(Lorg/catrobat/catroid/content/Project;Landroid/content/Context;)V
    .locals 9
    .param p0, "project"    # Lorg/catrobat/catroid/content/Project;
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getRequiredResources()Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "project.settings"

    if-nez v0, :cond_4

    .line 66
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSettings()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 96
    .local v1, "$i$f$toTypedArray":I
    move-object v2, v0

    .line 97
    .local v2, "thisCollection$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    new-array v4, v3, [Lorg/catrobat/catroid/content/Setting;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 66
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v2    # "thisCollection$iv":Ljava/util/Collection;
    move-object v0, v4

    .local v0, "$this$filterIsInstance$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 98
    .local v1, "$i$f$filterIsInstance":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    .local v4, "$this$filterIsInstanceTo$iv$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 107
    .local v5, "$i$f$filterIsInstanceTo":I
    array-length v6, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v7, v4, v3

    .local v7, "element$iv$iv":Ljava/lang/Object;
    instance-of v8, v7, Lorg/catrobat/catroid/content/LegoNXTSetting;

    if-eqz v8, :cond_0

    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterIsInstanceTo$iv$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$filterIsInstanceTo":I
    check-cast v2, Ljava/util/List;

    .line 98
    nop

    .end local v0    # "$this$filterIsInstance$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$filterIsInstance":I
    check-cast v2, Ljava/lang/Iterable;

    .line 66
    move-object v0, v2

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 109
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/catrobat/catroid/content/LegoNXTSetting;

    .local v4, "setting":Lorg/catrobat/catroid/content/LegoNXTSetting;
    const/4 v5, 0x0

    .line 67
    .local v5, "$i$a$-forEach-ProjectSaverKt$saveLegoNXTSettingsToProject$1":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSettings()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 68
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "setting":Lorg/catrobat/catroid/content/LegoNXTSetting;
    .end local v5    # "$i$a$-forEach-ProjectSaverKt$saveLegoNXTSettingsToProject$1":I
    goto :goto_1

    .line 110
    :cond_2
    nop

    .line 69
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void

    .line 97
    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    .local v1, "$i$f$toTypedArray":I
    .local v2, "thisCollection$iv":Ljava/util/Collection;
    :cond_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v2    # "thisCollection$iv":Ljava/util/Collection;
    :cond_4
    invoke-static {p1}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getLegoNXTSensorMapping(Landroid/content/Context;)[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    move-result-object v0

    .line 73
    .local v0, "sensorMapping":[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSettings()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 111
    .local v2, "$i$f$filterIsInstance":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 120
    .local v5, "$i$f$filterIsInstanceTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "element$iv$iv":Ljava/lang/Object;
    instance-of v8, v7, Lorg/catrobat/catroid/content/LegoNXTSetting;

    if-eqz v8, :cond_5

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 121
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterIsInstanceTo":I
    check-cast v3, Ljava/util/List;

    .line 111
    nop

    .end local v1    # "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filterIsInstance":I
    check-cast v3, Ljava/lang/Iterable;

    .line 73
    move-object v1, v3

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 122
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/catrobat/catroid/content/LegoNXTSetting;

    .local v4, "setting":Lorg/catrobat/catroid/content/LegoNXTSetting;
    const/4 v5, 0x0

    .line 74
    .local v5, "$i$a$-forEach-ProjectSaverKt$saveLegoNXTSettingsToProject$2":I
    invoke-virtual {v4, v0}, Lorg/catrobat/catroid/content/LegoNXTSetting;->updateMapping([Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;)V

    .line 75
    return-void

    .line 123
    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "setting":Lorg/catrobat/catroid/content/LegoNXTSetting;
    .end local v5    # "$i$a$-forEach-ProjectSaverKt$saveLegoNXTSettingsToProject$2":I
    :cond_7
    nop

    .line 77
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSettings()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/content/LegoNXTSetting;

    invoke-direct {v2, v0}, Lorg/catrobat/catroid/content/LegoNXTSetting;-><init>([Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public static final saveProjectSerial(Lorg/catrobat/catroid/content/Project;Landroid/content/Context;)Z
    .locals 1
    .param p0, "project"    # Lorg/catrobat/catroid/content/Project;
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    if-eqz p0, :cond_0

    .line 59
    invoke-static {p0, p1}, Lorg/catrobat/catroid/io/asynctask/ProjectSaverKt;->saveLegoNXTSettingsToProject(Lorg/catrobat/catroid/content/Project;Landroid/content/Context;)V

    .line 60
    invoke-static {p0, p1}, Lorg/catrobat/catroid/io/asynctask/ProjectSaverKt;->saveLegoEV3SettingsToProject(Lorg/catrobat/catroid/content/Project;Landroid/content/Context;)V

    .line 61
    invoke-static {}, Lorg/catrobat/catroid/io/XstreamSerializer;->getInstance()Lorg/catrobat/catroid/io/XstreamSerializer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/io/XstreamSerializer;->saveProject(Lorg/catrobat/catroid/content/Project;)Z

    move-result v0

    return v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
