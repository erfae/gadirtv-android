.class final Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PersistHistoryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/ActivityChooserModel;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActivityChooserModel;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "historical-record"

    const-string v2, "historical-records"

    const-string v3, "Error writing historical record file: "

    const-string v4, "ActivityChooserModel"

    const/4 v5, 0x0

    .line 2
    aget-object v6, p1, v5

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x1

    .line 3
    aget-object v8, p1, v7

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    .line 4
    :try_start_0
    iget-object v10, v1, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iget-object v10, v10, Landroidx/appcompat/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v8, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 5
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v10

    .line 6
    :try_start_1
    invoke-interface {v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v11, "UTF-8"

    .line 7
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 8
    invoke-interface {v10, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_0

    .line 10
    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    .line 11
    invoke-interface {v10, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "activity"

    .line 12
    iget-object v15, v13, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    .line 13
    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    .line 14
    invoke-interface {v10, v9, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "time"

    move-object/from16 v16, v6

    .line 15
    iget-wide v5, v13, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->time:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v9, v14, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "weight"

    .line 16
    iget v6, v13, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v9, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 17
    invoke-interface {v10, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v16

    const/4 v5, 0x0

    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v10, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 19
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    iget-object v0, v1, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iput-boolean v7, v0, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v8, :cond_1

    .line 21
    :goto_1
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 22
    :try_start_3
    sget-object v2, Landroidx/appcompat/widget/ActivityChooserModel;->DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    iget-object v0, v1, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iput-boolean v7, v0, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v8, :cond_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 24
    :try_start_4
    sget-object v2, Landroidx/appcompat/widget/ActivityChooserModel;->DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 25
    iget-object v0, v1, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iput-boolean v7, v0, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v8, :cond_1

    goto :goto_1

    :catch_2
    move-exception v0

    .line 26
    :try_start_5
    sget-object v2, Landroidx/appcompat/widget/ActivityChooserModel;->DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 27
    iget-object v0, v1, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iput-boolean v7, v0, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v8, :cond_1

    goto :goto_1

    :catch_3
    :cond_1
    :goto_2
    return-object v9

    :goto_3
    iget-object v2, v1, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iput-boolean v7, v2, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v8, :cond_2

    .line 28
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 29
    :catch_4
    :cond_2
    throw v0

    :catch_5
    move-exception v0

    .line 30
    sget-object v2, Landroidx/appcompat/widget/ActivityChooserModel;->DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v9
.end method
