.class public Landroidx/work/impl/utils/EnqueueRunnable;
.super Ljava/lang/Object;
.source "EnqueueRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mOperation:Landroidx/work/impl/OperationImpl;

.field private final mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-string v0, "EnqueueRunnable"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkContinuationImpl;)V
    .locals 1
    .param p1, "workContinuation"    # Landroidx/work/impl/WorkContinuationImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workContinuation"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    .line 79
    new-instance v0, Landroidx/work/impl/OperationImpl;

    invoke-direct {v0}, Landroidx/work/impl/OperationImpl;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    .line 80
    return-void
.end method

.method private static enqueueContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z
    .locals 6
    .param p0, "workContinuation"    # Landroidx/work/impl/WorkContinuationImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workContinuation"
        }
    .end annotation

    .line 160
    invoke-static {p0}, Landroidx/work/impl/WorkContinuationImpl;->prerequisitesFor(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/Set;

    move-result-object v0

    .line 162
    .local v0, "prerequisiteIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 163
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v1

    .line 164
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getWork()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 165
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 166
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getName()Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getExistingWorkPolicy()Landroidx/work/ExistingWorkPolicy;

    move-result-object v5

    .line 162
    invoke-static {v1, v2, v3, v4, v5}, Landroidx/work/impl/utils/EnqueueRunnable;->enqueueWorkWithPrerequisites(Landroidx/work/impl/WorkManagerImpl;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;)Z

    move-result v1

    .line 169
    .local v1, "needsScheduling":Z
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->markEnqueued()V

    .line 170
    return v1
.end method

.method private static enqueueWorkWithPrerequisites(Landroidx/work/impl/WorkManagerImpl;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;)Z
    .locals 22
    .param p0, "workManagerImpl"    # Landroidx/work/impl/WorkManagerImpl;
    .param p2, "prerequisiteIds"    # [Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "existingWorkPolicy"    # Landroidx/work/ExistingWorkPolicy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "workManagerImpl",
            "workList",
            "prerequisiteIds",
            "name",
            "existingWorkPolicy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/WorkManagerImpl;",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/WorkRequest;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/work/ExistingWorkPolicy;",
            ")Z"
        }
    .end annotation

    .line 185
    .local p1, "workList":Ljava/util/List;, "Ljava/util/List<+Landroidx/work/WorkRequest;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    .line 187
    .local v4, "needsScheduling":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 188
    .local v5, "currentTimeMillis":J
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v7

    .line 190
    .local v7, "workDatabase":Landroidx/work/impl/WorkDatabase;
    if-eqz v1, :cond_0

    array-length v10, v1

    if-lez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 191
    .local v10, "hasPrerequisite":Z
    :goto_0
    const/4 v11, 0x1

    .line 192
    .local v11, "hasCompletedAllPrerequisites":Z
    const/4 v12, 0x0

    .line 193
    .local v12, "hasFailedPrerequisites":Z
    const/4 v13, 0x0

    .line 195
    .local v13, "hasCancelledPrerequisites":Z
    if-eqz v10, :cond_6

    .line 199
    array-length v14, v1

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_5

    aget-object v9, v1, v15

    .line 200
    .local v9, "id":Ljava/lang/String;
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v8

    invoke-interface {v8, v9}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v8

    .line 201
    .local v8, "prerequisiteWorkSpec":Landroidx/work/impl/model/WorkSpec;
    if-nez v8, :cond_1

    .line 202
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v14

    sget-object v15, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    move/from16 v18, v4

    const/4 v4, 0x1

    .end local v4    # "needsScheduling":Z
    .local v18, "needsScheduling":Z
    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v19, v12

    const/4 v12, 0x0

    .end local v12    # "hasFailedPrerequisites":Z
    .local v19, "hasFailedPrerequisites":Z
    aput-object v9, v4, v12

    .line 203
    move-object/from16 v20, v9

    .end local v9    # "id":Ljava/lang/String;
    .local v20, "id":Ljava/lang/String;
    const-string v9, "Prerequisite %s doesn\'t exist; not enqueuing"

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v9, v12, [Ljava/lang/Throwable;

    .line 202
    invoke-virtual {v14, v15, v4, v9}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 204
    return v12

    .line 207
    .end local v18    # "needsScheduling":Z
    .end local v19    # "hasFailedPrerequisites":Z
    .end local v20    # "id":Ljava/lang/String;
    .restart local v4    # "needsScheduling":Z
    .restart local v9    # "id":Ljava/lang/String;
    .restart local v12    # "hasFailedPrerequisites":Z
    :cond_1
    move/from16 v18, v4

    move-object/from16 v20, v9

    move/from16 v19, v12

    .end local v4    # "needsScheduling":Z
    .end local v9    # "id":Ljava/lang/String;
    .end local v12    # "hasFailedPrerequisites":Z
    .restart local v18    # "needsScheduling":Z
    .restart local v19    # "hasFailedPrerequisites":Z
    .restart local v20    # "id":Ljava/lang/String;
    iget-object v4, v8, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 208
    .local v4, "prerequisiteState":Landroidx/work/WorkInfo$State;
    sget-object v9, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    if-ne v4, v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    and-int/2addr v11, v9

    .line 209
    sget-object v9, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    if-ne v4, v9, :cond_3

    .line 210
    const/4 v9, 0x1

    move v12, v9

    .end local v19    # "hasFailedPrerequisites":Z
    .local v9, "hasFailedPrerequisites":Z
    goto :goto_3

    .line 211
    .end local v9    # "hasFailedPrerequisites":Z
    .restart local v19    # "hasFailedPrerequisites":Z
    :cond_3
    sget-object v9, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-ne v4, v9, :cond_4

    .line 212
    const/4 v9, 0x1

    move v13, v9

    move/from16 v12, v19

    .end local v13    # "hasCancelledPrerequisites":Z
    .local v9, "hasCancelledPrerequisites":Z
    goto :goto_3

    .line 211
    .end local v9    # "hasCancelledPrerequisites":Z
    .restart local v13    # "hasCancelledPrerequisites":Z
    :cond_4
    move/from16 v12, v19

    .line 199
    .end local v4    # "prerequisiteState":Landroidx/work/WorkInfo$State;
    .end local v8    # "prerequisiteWorkSpec":Landroidx/work/impl/model/WorkSpec;
    .end local v19    # "hasFailedPrerequisites":Z
    .end local v20    # "id":Ljava/lang/String;
    .restart local v12    # "hasFailedPrerequisites":Z
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v18

    goto :goto_1

    .end local v18    # "needsScheduling":Z
    .local v4, "needsScheduling":Z
    :cond_5
    move/from16 v18, v4

    move/from16 v19, v12

    .end local v4    # "needsScheduling":Z
    .end local v12    # "hasFailedPrerequisites":Z
    .restart local v18    # "needsScheduling":Z
    .restart local v19    # "hasFailedPrerequisites":Z
    goto :goto_4

    .line 195
    .end local v18    # "needsScheduling":Z
    .end local v19    # "hasFailedPrerequisites":Z
    .restart local v4    # "needsScheduling":Z
    .restart local v12    # "hasFailedPrerequisites":Z
    :cond_6
    move/from16 v18, v4

    .line 217
    .end local v4    # "needsScheduling":Z
    .restart local v18    # "needsScheduling":Z
    :goto_4
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v8, 0x1

    xor-int/2addr v4, v8

    .line 221
    .local v4, "isNamed":Z
    if-eqz v4, :cond_7

    if-nez v10, :cond_7

    move v9, v8

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    .line 222
    .local v9, "shouldApplyExistingWorkPolicy":Z
    :goto_5
    if-eqz v9, :cond_19

    .line 224
    nop

    .line 225
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v14

    invoke-interface {v14, v2}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 227
    .local v14, "existingWorkSpecIdAndStates":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$IdAndState;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_18

    .line 229
    sget-object v15, Landroidx/work/ExistingWorkPolicy;->APPEND:Landroidx/work/ExistingWorkPolicy;

    if-eq v3, v15, :cond_e

    sget-object v15, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    if-ne v3, v15, :cond_8

    move/from16 v19, v9

    goto/16 :goto_a

    .line 263
    :cond_8
    sget-object v8, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    if-ne v3, v8, :cond_c

    .line 264
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 265
    .local v15, "idAndState":Landroidx/work/impl/model/WorkSpec$IdAndState;
    move-object/from16 v17, v8

    iget-object v8, v15, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    move/from16 v19, v9

    .end local v9    # "shouldApplyExistingWorkPolicy":Z
    .local v19, "shouldApplyExistingWorkPolicy":Z
    sget-object v9, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-eq v8, v9, :cond_a

    iget-object v8, v15, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    sget-object v9, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v8, v9, :cond_9

    goto :goto_7

    .line 268
    .end local v15    # "idAndState":Landroidx/work/impl/model/WorkSpec$IdAndState;
    :cond_9
    move-object/from16 v8, v17

    move/from16 v9, v19

    goto :goto_6

    .line 266
    .restart local v15    # "idAndState":Landroidx/work/impl/model/WorkSpec$IdAndState;
    :cond_a
    :goto_7
    const/4 v9, 0x0

    return v9

    .line 264
    .end local v15    # "idAndState":Landroidx/work/impl/model/WorkSpec$IdAndState;
    .end local v19    # "shouldApplyExistingWorkPolicy":Z
    .restart local v9    # "shouldApplyExistingWorkPolicy":Z
    :cond_b
    move/from16 v19, v9

    const/4 v9, 0x0

    .end local v9    # "shouldApplyExistingWorkPolicy":Z
    .restart local v19    # "shouldApplyExistingWorkPolicy":Z
    goto :goto_8

    .line 263
    .end local v19    # "shouldApplyExistingWorkPolicy":Z
    .restart local v9    # "shouldApplyExistingWorkPolicy":Z
    :cond_c
    move/from16 v19, v9

    const/4 v9, 0x0

    .line 276
    .end local v9    # "shouldApplyExistingWorkPolicy":Z
    .restart local v19    # "shouldApplyExistingWorkPolicy":Z
    :goto_8
    invoke-static {v2, v0, v9}, Landroidx/work/impl/utils/CancelWorkRunnable;->forName(Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;Z)Landroidx/work/impl/utils/CancelWorkRunnable;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/work/impl/utils/CancelWorkRunnable;->run()V

    .line 280
    const/4 v8, 0x1

    .line 283
    .end local v18    # "needsScheduling":Z
    .local v8, "needsScheduling":Z
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v15

    .line 284
    .local v15, "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 285
    .local v9, "idAndState":Landroidx/work/impl/model/WorkSpec$IdAndState;
    move/from16 v17, v8

    .end local v8    # "needsScheduling":Z
    .local v17, "needsScheduling":Z
    iget-object v8, v9, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v15, v8}, Landroidx/work/impl/model/WorkSpecDao;->delete(Ljava/lang/String;)V

    .line 286
    .end local v9    # "idAndState":Landroidx/work/impl/model/WorkSpec$IdAndState;
    move/from16 v8, v17

    const/4 v9, 0x0

    goto :goto_9

    .line 284
    .end local v17    # "needsScheduling":Z
    .restart local v8    # "needsScheduling":Z
    :cond_d
    move/from16 v17, v8

    .end local v8    # "needsScheduling":Z
    .restart local v17    # "needsScheduling":Z
    move/from16 v18, v17

    goto/16 :goto_12

    .line 229
    .end local v15    # "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    .end local v17    # "needsScheduling":Z
    .end local v19    # "shouldApplyExistingWorkPolicy":Z
    .local v9, "shouldApplyExistingWorkPolicy":Z
    .restart local v18    # "needsScheduling":Z
    :cond_e
    move/from16 v19, v9

    .line 230
    .end local v9    # "shouldApplyExistingWorkPolicy":Z
    .restart local v19    # "shouldApplyExistingWorkPolicy":Z
    :goto_a
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    move-result-object v9

    .line 231
    .local v9, "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v15, "newPrerequisiteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 233
    .local v8, "idAndState":Landroidx/work/impl/model/WorkSpec$IdAndState;
    move/from16 v17, v10

    .end local v10    # "hasPrerequisite":Z
    .local v17, "hasPrerequisite":Z
    iget-object v10, v8, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v9, v10}, Landroidx/work/impl/model/DependencyDao;->hasDependents(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 234
    iget-object v10, v8, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    move-object/from16 v21, v9

    .end local v9    # "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    .local v21, "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    sget-object v9, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    if-ne v10, v9, :cond_f

    const/4 v9, 0x1

    goto :goto_c

    :cond_f
    const/4 v9, 0x0

    :goto_c
    and-int/2addr v9, v11

    .line 235
    .end local v11    # "hasCompletedAllPrerequisites":Z
    .local v9, "hasCompletedAllPrerequisites":Z
    iget-object v10, v8, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    sget-object v11, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    if-ne v10, v11, :cond_10

    .line 236
    const/4 v12, 0x1

    goto :goto_d

    .line 237
    :cond_10
    iget-object v10, v8, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    sget-object v11, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-ne v10, v11, :cond_11

    .line 238
    const/4 v13, 0x1

    .line 240
    :cond_11
    :goto_d
    iget-object v10, v8, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v11, v9

    goto :goto_e

    .line 233
    .end local v21    # "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    .local v9, "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    .restart local v11    # "hasCompletedAllPrerequisites":Z
    :cond_12
    move-object/from16 v21, v9

    .line 242
    .end local v8    # "idAndState":Landroidx/work/impl/model/WorkSpec$IdAndState;
    .end local v9    # "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    .restart local v21    # "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    :goto_e
    move/from16 v10, v17

    move-object/from16 v9, v21

    const/4 v8, 0x1

    goto :goto_b

    .line 243
    .end local v17    # "hasPrerequisite":Z
    .end local v21    # "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    .restart local v9    # "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    .restart local v10    # "hasPrerequisite":Z
    :cond_13
    move-object/from16 v21, v9

    move/from16 v17, v10

    .end local v9    # "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    .end local v10    # "hasPrerequisite":Z
    .restart local v17    # "hasPrerequisite":Z
    .restart local v21    # "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    sget-object v8, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    if-ne v3, v8, :cond_16

    .line 244
    if-nez v13, :cond_14

    if-eqz v12, :cond_16

    .line 246
    :cond_14
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v8

    .line 247
    .local v8, "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    nop

    .line 248
    invoke-interface {v8, v2}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 249
    .local v9, "idAndStates":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$IdAndState;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 250
    .local v3, "idAndState":Landroidx/work/impl/model/WorkSpec$IdAndState;
    move-object/from16 v16, v9

    .end local v9    # "idAndStates":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$IdAndState;>;"
    .local v16, "idAndStates":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$IdAndState;>;"
    iget-object v9, v3, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v8, v9}, Landroidx/work/impl/model/WorkSpecDao;->delete(Ljava/lang/String;)V

    .line 251
    .end local v3    # "idAndState":Landroidx/work/impl/model/WorkSpec$IdAndState;
    move-object/from16 v3, p4

    move-object/from16 v9, v16

    goto :goto_f

    .line 253
    .end local v16    # "idAndStates":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$IdAndState;>;"
    .restart local v9    # "idAndStates":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$IdAndState;>;"
    :cond_15
    move-object/from16 v16, v9

    .end local v9    # "idAndStates":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$IdAndState;>;"
    .restart local v16    # "idAndStates":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$IdAndState;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 254
    const/4 v3, 0x0

    .line 255
    .end local v13    # "hasCancelledPrerequisites":Z
    .local v3, "hasCancelledPrerequisites":Z
    const/4 v9, 0x0

    move v13, v3

    move v12, v9

    .line 258
    .end local v3    # "hasCancelledPrerequisites":Z
    .end local v8    # "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    .end local v16    # "idAndStates":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$IdAndState;>;"
    .restart local v13    # "hasCancelledPrerequisites":Z
    :cond_16
    invoke-interface {v15, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, [Ljava/lang/String;

    .line 259
    .end local p2    # "prerequisiteIds":[Ljava/lang/String;
    .local v1, "prerequisiteIds":[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_17

    const/4 v8, 0x1

    goto :goto_10

    :cond_17
    const/4 v8, 0x0

    :goto_10
    move v10, v8

    .line 260
    .end local v15    # "newPrerequisiteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "hasPrerequisite":Z
    .end local v21    # "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    .restart local v10    # "hasPrerequisite":Z
    goto :goto_12

    .line 227
    .end local v1    # "prerequisiteIds":[Ljava/lang/String;
    .end local v19    # "shouldApplyExistingWorkPolicy":Z
    .local v9, "shouldApplyExistingWorkPolicy":Z
    .restart local p2    # "prerequisiteIds":[Ljava/lang/String;
    :cond_18
    move/from16 v19, v9

    move/from16 v17, v10

    .end local v9    # "shouldApplyExistingWorkPolicy":Z
    .end local v10    # "hasPrerequisite":Z
    .restart local v17    # "hasPrerequisite":Z
    .restart local v19    # "shouldApplyExistingWorkPolicy":Z
    goto :goto_11

    .line 222
    .end local v14    # "existingWorkSpecIdAndStates":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$IdAndState;>;"
    .end local v17    # "hasPrerequisite":Z
    .end local v19    # "shouldApplyExistingWorkPolicy":Z
    .restart local v9    # "shouldApplyExistingWorkPolicy":Z
    .restart local v10    # "hasPrerequisite":Z
    :cond_19
    move/from16 v19, v9

    move/from16 v17, v10

    .line 291
    .end local v9    # "shouldApplyExistingWorkPolicy":Z
    .end local v10    # "hasPrerequisite":Z
    .restart local v17    # "hasPrerequisite":Z
    .restart local v19    # "shouldApplyExistingWorkPolicy":Z
    :goto_11
    move/from16 v10, v17

    .end local v17    # "hasPrerequisite":Z
    .end local p2    # "prerequisiteIds":[Ljava/lang/String;
    .restart local v1    # "prerequisiteIds":[Ljava/lang/String;
    .restart local v10    # "hasPrerequisite":Z
    :goto_12
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/work/WorkRequest;

    .line 292
    .local v8, "work":Landroidx/work/WorkRequest;
    invoke-virtual {v8}, Landroidx/work/WorkRequest;->getWorkSpec()Landroidx/work/impl/model/WorkSpec;

    move-result-object v9

    .line 294
    .local v9, "workSpec":Landroidx/work/impl/model/WorkSpec;
    if-eqz v10, :cond_1c

    if-nez v11, :cond_1c

    .line 295
    if-eqz v12, :cond_1a

    .line 296
    sget-object v14, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    iput-object v14, v9, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_14

    .line 297
    :cond_1a
    if-eqz v13, :cond_1b

    .line 298
    sget-object v14, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    iput-object v14, v9, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_14

    .line 300
    :cond_1b
    sget-object v14, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    iput-object v14, v9, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_14

    .line 313
    :cond_1c
    invoke-virtual {v9}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v14

    if-nez v14, :cond_1d

    .line 314
    iput-wide v5, v9, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    goto :goto_14

    .line 316
    :cond_1d
    const-wide/16 v14, 0x0

    iput-wide v14, v9, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 320
    :goto_14
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x17

    if-lt v14, v15, :cond_1e

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x19

    if-gt v14, v15, :cond_1e

    .line 322
    invoke-static {v9}, Landroidx/work/impl/utils/EnqueueRunnable;->tryDelegateConstrainedWorkSpec(Landroidx/work/impl/model/WorkSpec;)V

    goto :goto_15

    .line 323
    :cond_1e
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x16

    if-gt v14, v15, :cond_1f

    .line 324
    const-string v14, "androidx.work.impl.background.gcm.GcmScheduler"

    invoke-static {v0, v14}, Landroidx/work/impl/utils/EnqueueRunnable;->usesScheduler(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 325
    invoke-static {v9}, Landroidx/work/impl/utils/EnqueueRunnable;->tryDelegateConstrainedWorkSpec(Landroidx/work/impl/model/WorkSpec;)V

    .line 329
    :cond_1f
    :goto_15
    iget-object v14, v9, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    sget-object v15, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-ne v14, v15, :cond_20

    .line 330
    const/4 v14, 0x1

    move/from16 v18, v14

    .line 333
    :cond_20
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v14

    invoke-interface {v14, v9}, Landroidx/work/impl/model/WorkSpecDao;->insertWorkSpec(Landroidx/work/impl/model/WorkSpec;)V

    .line 335
    if-eqz v10, :cond_22

    .line 336
    array-length v14, v1

    const/4 v15, 0x0

    :goto_16
    if-ge v15, v14, :cond_21

    aget-object v0, v1, v15

    .line 337
    .local v0, "prerequisiteId":Ljava/lang/String;
    move-object/from16 v16, v1

    .end local v1    # "prerequisiteIds":[Ljava/lang/String;
    .local v16, "prerequisiteIds":[Ljava/lang/String;
    new-instance v1, Landroidx/work/impl/model/Dependency;

    move-object/from16 p2, v3

    invoke-virtual {v8}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroidx/work/impl/model/Dependency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .local v1, "dep":Landroidx/work/impl/model/Dependency;
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    move-result-object v3

    invoke-interface {v3, v1}, Landroidx/work/impl/model/DependencyDao;->insertDependency(Landroidx/work/impl/model/Dependency;)V

    .line 336
    .end local v0    # "prerequisiteId":Ljava/lang/String;
    .end local v1    # "dep":Landroidx/work/impl/model/Dependency;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v1, v16

    goto :goto_16

    .end local v16    # "prerequisiteIds":[Ljava/lang/String;
    .local v1, "prerequisiteIds":[Ljava/lang/String;
    :cond_21
    move-object/from16 v16, v1

    move-object/from16 p2, v3

    .end local v1    # "prerequisiteIds":[Ljava/lang/String;
    .restart local v16    # "prerequisiteIds":[Ljava/lang/String;
    goto :goto_17

    .line 335
    .end local v16    # "prerequisiteIds":[Ljava/lang/String;
    .restart local v1    # "prerequisiteIds":[Ljava/lang/String;
    :cond_22
    move-object/from16 v16, v1

    move-object/from16 p2, v3

    .line 342
    .end local v1    # "prerequisiteIds":[Ljava/lang/String;
    .restart local v16    # "prerequisiteIds":[Ljava/lang/String;
    :goto_17
    invoke-virtual {v8}, Landroidx/work/WorkRequest;->getTags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 343
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/work/impl/model/WorkTagDao;

    move-result-object v3

    new-instance v14, Landroidx/work/impl/model/WorkTag;

    invoke-virtual {v8}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v1, v15}, Landroidx/work/impl/model/WorkTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v14}, Landroidx/work/impl/model/WorkTagDao;->insert(Landroidx/work/impl/model/WorkTag;)V

    .line 344
    .end local v1    # "tag":Ljava/lang/String;
    goto :goto_18

    .line 346
    :cond_23
    if-eqz v4, :cond_24

    .line 347
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->workNameDao()Landroidx/work/impl/model/WorkNameDao;

    move-result-object v0

    new-instance v1, Landroidx/work/impl/model/WorkName;

    invoke-virtual {v8}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/work/impl/model/WorkName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkNameDao;->insert(Landroidx/work/impl/model/WorkName;)V

    .line 349
    .end local v8    # "work":Landroidx/work/WorkRequest;
    .end local v9    # "workSpec":Landroidx/work/impl/model/WorkSpec;
    :cond_24
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v1, v16

    goto/16 :goto_13

    .line 350
    .end local v16    # "prerequisiteIds":[Ljava/lang/String;
    .local v1, "prerequisiteIds":[Ljava/lang/String;
    :cond_25
    return v18
.end method

.method private static processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z
    .locals 9
    .param p0, "workContinuation"    # Landroidx/work/impl/WorkContinuationImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workContinuation"
        }
    .end annotation

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "needsScheduling":Z
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getParents()Ljava/util/List;

    move-result-object v1

    .line 143
    .local v1, "parents":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/WorkContinuationImpl;>;"
    if-eqz v1, :cond_1

    .line 144
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/impl/WorkContinuationImpl;

    .line 147
    .local v3, "parent":Landroidx/work/impl/WorkContinuationImpl;
    invoke-virtual {v3}, Landroidx/work/impl/WorkContinuationImpl;->isEnqueued()Z

    move-result v4

    if-nez v4, :cond_0

    .line 148
    invoke-static {v3}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result v4

    or-int/2addr v0, v4

    goto :goto_1

    .line 150
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 151
    invoke-virtual {v3}, Landroidx/work/impl/WorkContinuationImpl;->getIds()Ljava/util/List;

    move-result-object v7

    const-string v8, ", "

    invoke-static {v8, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 150
    const-string v7, "Already enqueued work ids (%s)."

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6, v7}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 153
    .end local v3    # "parent":Landroidx/work/impl/WorkContinuationImpl;
    :goto_1
    goto :goto_0

    .line 155
    :cond_1
    invoke-static {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->enqueueContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 156
    return v0
.end method

.method private static tryDelegateConstrainedWorkSpec(Landroidx/work/impl/model/WorkSpec;)V
    .locals 5
    .param p0, "workSpec"    # Landroidx/work/impl/model/WorkSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workSpec"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 357
    .local v0, "constraints":Landroidx/work/Constraints;
    invoke-virtual {v0}, Landroidx/work/Constraints;->requiresBatteryNotLow()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/work/Constraints;->requiresStorageNotLow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    :cond_0
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 359
    .local v1, "workerClassName":Ljava/lang/String;
    new-instance v2, Landroidx/work/Data$Builder;

    invoke-direct {v2}, Landroidx/work/Data$Builder;-><init>()V

    .line 361
    .local v2, "builder":Landroidx/work/Data$Builder;
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-virtual {v2, v3}, Landroidx/work/Data$Builder;->putAll(Landroidx/work/Data;)Landroidx/work/Data$Builder;

    move-result-object v3

    .line 362
    const-string v4, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v3, v4, v1}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    .line 363
    const-class v3, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 364
    invoke-virtual {v2}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v3

    iput-object v3, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 366
    .end local v1    # "workerClassName":Ljava/lang/String;
    .end local v2    # "builder":Landroidx/work/Data$Builder;
    :cond_1
    return-void
.end method

.method private static usesScheduler(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)Z
    .locals 5
    .param p0, "workManager"    # Landroidx/work/impl/WorkManagerImpl;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "workManager",
            "className"
        }
    .end annotation

    .line 377
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 378
    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/impl/Scheduler;

    .line 379
    .local v3, "scheduler":Landroidx/work/impl/Scheduler;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 380
    const/4 v0, 0x1

    return v0

    .line 382
    .end local v3    # "scheduler":Landroidx/work/impl/Scheduler;
    :cond_0
    goto :goto_0

    .line 383
    :cond_1
    return v0

    .line 384
    .end local v1    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 385
    .local v1, "ignore":Ljava/lang/ClassNotFoundException;
    return v0
.end method


# virtual methods
.method public addToDatabase()Z
    .locals 3

    .line 116
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    .line 117
    .local v0, "workManagerImpl":Landroidx/work/impl/WorkManagerImpl;
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    .line 118
    .local v1, "workDatabase":Landroidx/work/impl/WorkDatabase;
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 120
    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-static {v2}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result v2

    .line 121
    .local v2, "needsScheduling":Z
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    nop

    .line 124
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 122
    return v2

    .line 124
    .end local v2    # "needsScheduling":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 125
    throw v2
.end method

.method public getOperation()Landroidx/work/Operation;
    .locals 1

    .line 107
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    return-object v0
.end method

.method public run()V
    .locals 5

    .line 85
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkContinuationImpl;->hasCycles()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 89
    invoke-virtual {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->addToDatabase()Z

    move-result v0

    .line 90
    .local v0, "needsScheduling":Z
    if-eqz v0, :cond_0

    .line 92
    iget-object v2, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    .line 93
    invoke-virtual {v2}, Landroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/work/impl/WorkManagerImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 94
    .local v2, "context":Landroid/content/Context;
    const-class v3, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v2, v3, v1}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 95
    invoke-virtual {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->scheduleWorkInBackground()V

    .line 97
    .end local v2    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    sget-object v2, Landroidx/work/Operation;->SUCCESS:Landroidx/work/Operation$State$SUCCESS;

    invoke-virtual {v1, v2}, Landroidx/work/impl/OperationImpl;->setState(Landroidx/work/Operation$State;)V

    .line 100
    .end local v0    # "needsScheduling":Z
    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "WorkContinuation has cycles (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    aput-object v4, v1, v3

    .line 87
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    .local v0, "exception":Ljava/lang/Throwable;
    iget-object v1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    new-instance v2, Landroidx/work/Operation$State$FAILURE;

    invoke-direct {v2, v0}, Landroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroidx/work/impl/OperationImpl;->setState(Landroidx/work/Operation$State;)V

    .line 101
    .end local v0    # "exception":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public scheduleWorkInBackground()V
    .locals 4

    .line 133
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    .line 134
    .local v0, "workManager":Landroidx/work/impl/WorkManagerImpl;
    nop

    .line 135
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getConfiguration()Landroidx/work/Configuration;

    move-result-object v1

    .line 136
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    .line 137
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object v3

    .line 134
    invoke-static {v1, v2, v3}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 138
    return-void
.end method
