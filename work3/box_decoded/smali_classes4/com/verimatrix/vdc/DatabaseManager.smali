.class final Lcom/verimatrix/vdc/DatabaseManager;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseManager.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "VDCMonitorStorage"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final KEY_EVENTS_D0:Ljava/lang/String; = "d0"

.field private static final KEY_EVENTS_D1:Ljava/lang/String; = "d1"

.field private static final KEY_EVENTS_D2:Ljava/lang/String; = "d2"

.field private static final KEY_EVENTS_D3:Ljava/lang/String; = "d3"

.field private static final KEY_EVENTS_DLT:Ljava/lang/String; = "dlt"

.field private static final KEY_EVENTS_DMS:Ljava/lang/String; = "dms"

.field private static final KEY_EVENTS_DT:Ljava/lang/String; = "dt"

.field private static final KEY_EVENTS_EVENT_ID:Ljava/lang/String; = "event_id"

.field private static final KEY_EVENTS_FLAGS:Ljava/lang/String; = "flags"

.field private static final KEY_EVENTS_FLAGS_ADDITION:Ljava/lang/String; = "flags_addition"

.field private static final KEY_EVENTS_ID:Ljava/lang/String; = "id"

.field private static final KEY_EVENTS_MD:Ljava/lang/String; = "md"

.field private static final KEY_EVENTS_NAME:Ljava/lang/String; = "name"

.field private static final KEY_EVENTS_PROPERTIES:Ljava/lang/String; = "properties"

.field private static final KEY_EVENTS_R0:Ljava/lang/String; = "r0"

.field private static final KEY_EVENTS_R1:Ljava/lang/String; = "r1"

.field private static final KEY_EVENTS_R2:Ljava/lang/String; = "r2"

.field private static final KEY_EVENTS_R3:Ljava/lang/String; = "r3"

.field private static final KEY_EVENTS_SQ:Ljava/lang/String; = "sq"

.field private static final KEY_EVENTS_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final KEY_LOG_EVENTS_ID:Ljava/lang/String; = "id"

.field private static final KEY_LOG_EVENTS_NAME:Ljava/lang/String; = "name"

.field private static final KEY_LOG_EVENTS_PROPERTIES:Ljava/lang/String; = "properties"

.field private static final KEY_LOG_EVENTS_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final TABLE_EVENTS:Ljava/lang/String; = "events"

.field private static final TABLE_LOG_EVENTS:Ljava/lang/String; = "events_log"

.field public static final TAG:Ljava/lang/String; = "DatabaseManager"

.field private static instance:Lcom/verimatrix/vdc/DatabaseManager;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mOpenCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "VDCMonitorStorage"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 62
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method static declared-synchronized getInstance()Lcom/verimatrix/vdc/DatabaseManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-class v0, Lcom/verimatrix/vdc/DatabaseManager;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/verimatrix/vdc/DatabaseManager;->instance:Lcom/verimatrix/vdc/DatabaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 76
    monitor-exit v0

    return-object v1

    .line 73
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not initialized, call init(..) method first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/verimatrix/vdc/DatabaseManager;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/verimatrix/vdc/DatabaseManager;->instance:Lcom/verimatrix/vdc/DatabaseManager;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/verimatrix/vdc/DatabaseManager;

    invoke-direct {v1, p0}, Lcom/verimatrix/vdc/DatabaseManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/verimatrix/vdc/DatabaseManager;->instance:Lcom/verimatrix/vdc/DatabaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method addEvent(Lcom/verimatrix/vdc/SendEvent;I)V
    .locals 6

    const-string v0, "events"

    .line 146
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 148
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 149
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "name"

    .line 150
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "timestamp"

    .line 151
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "properties"

    .line 152
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getProperties()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/verimatrix/vdc/JsonUtils;->mapToJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "event_id"

    .line 153
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getEventId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "flags"

    .line 154
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getFlags()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "flags_addition"

    .line 155
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getFlagsAddition()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "dt"

    .line 156
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getDt()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "dms"

    .line 157
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getDms()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "d0"

    .line 158
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getD0()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "d1"

    .line 159
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getD1()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "d2"

    .line 160
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getD2()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "d3"

    .line 161
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getD3()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "r0"

    .line 162
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getR0()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "r1"

    .line 163
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getR1()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "r2"

    .line 164
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getR2()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "r3"

    .line 165
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getR3()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "dlt"

    .line 166
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getDlt()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "sq"

    .line 167
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getSq()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "md"

    .line 168
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getMd()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/verimatrix/vdc/DatabaseManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " insert : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getEventId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 170
    invoke-virtual {v1, v0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timestamp<(SELECT timestamp FROM events ORDER BY timestamp DESC LIMIT 1 OFFSET "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 176
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 180
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->closeDatabase()V

    return-void

    :catchall_0
    move-exception p1

    .line 179
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 180
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->closeDatabase()V

    throw p1
.end method

.method addLogEvent(Lcom/verimatrix/vdc/LogEvent;I)V
    .locals 12

    .line 338
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 339
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 340
    invoke-virtual {p1}, Lcom/verimatrix/vdc/LogEvent;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Lcom/verimatrix/vdc/LogEvent;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 342
    invoke-virtual {p1}, Lcom/verimatrix/vdc/LogEvent;->getProperties()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/verimatrix/vdc/JsonUtils;->stringArrayToJson([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "properties"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "events_log"

    const/4 v11, 0x0

    .line 343
    invoke-virtual {v10, p1, v11, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v0, "id"

    .line 347
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    const-string v2, "events_log"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "timestamp DESC"

    const/4 v9, 0x0

    move-object v0, v10

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 350
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 352
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-le v1, p2, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    if-le v2, p2, :cond_1

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, p1, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 359
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 361
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 363
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->closeDatabase()V

    return-void
.end method

.method declared-synchronized closeDatabase()V
    .locals 1

    monitor-enter p0

    .line 135
    :try_start_0
    iget v0, p0, Lcom/verimatrix/vdc/DatabaseManager;->mOpenCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/verimatrix/vdc/DatabaseManager;->mOpenCounter:I

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/verimatrix/vdc/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method deleteAllEvents()V
    .locals 3

    .line 329
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    const/4 v2, 0x0

    .line 330
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 331
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->closeDatabase()V

    return-void
.end method

.method deleteAllLogEvents()V
    .locals 3

    .line 434
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events_log"

    const/4 v2, 0x0

    .line 435
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 436
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->closeDatabase()V

    return-void
.end method

.method deleteEvent(Lcom/verimatrix/vdc/SendEvent;)V
    .locals 4

    .line 314
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 316
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getEventId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "events"

    const-string v2, "timestamp=? AND event_id=?"

    .line 315
    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 317
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->closeDatabase()V

    return-void
.end method

.method deleteEvents(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/verimatrix/vdc/SendEvent;",
            ">;)V"
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 322
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verimatrix/vdc/SendEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 323
    invoke-virtual {v1}, Lcom/verimatrix/vdc/SendEvent;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "events"

    const-string v3, "timestamp=?"

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->closeDatabase()V

    return-void
.end method

.method deleteLogEvents(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/verimatrix/vdc/LogEvent;",
            ">;)V"
        }
    .end annotation

    .line 425
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 426
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verimatrix/vdc/LogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 428
    invoke-virtual {v1}, Lcom/verimatrix/vdc/LogEvent;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "events_log"

    const-string v3, "timestamp=?"

    .line 427
    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->closeDatabase()V

    return-void
.end method

.method getEvents(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;)Ljava/util/List;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/verimatrix/vdc/Configuration;",
            ")",
            "Ljava/util/List<",
            "Lcom/verimatrix/vdc/SendEvent;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "name"

    const-string v3, "timestamp"

    const-string v4, "properties"

    const-string v5, "event_id"

    const-string v6, "flags"

    const-string v7, "flags_addition"

    const-string v8, "dt"

    const-string v9, "dms"

    const-string v10, "d0"

    const-string v11, "d1"

    const-string v12, "d2"

    const-string v13, "d3"

    const-string v14, "r0"

    const-string v15, "r1"

    const-string v16, "r2"

    const-string v17, "r3"

    const-string v18, "dlt"

    const-string v19, "sq"

    const-string v20, "md"

    .line 187
    filled-new-array/range {v2 .. v20}, [Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    const-string v3, "events"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "timestamp ASC"

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 210
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 211
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 213
    :cond_0
    new-instance v2, Lcom/verimatrix/vdc/SendEvent;

    move-object v3, v2

    const/4 v4, 0x0

    .line 216
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x1

    .line 217
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v4, 0x2

    .line 218
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/verimatrix/vdc/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    const/4 v4, 0x3

    .line 219
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v4, 0x4

    .line 220
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v4, 0x5

    .line 221
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v4, 0x6

    .line 222
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/4 v4, 0x7

    .line 223
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/16 v4, 0x8

    .line 224
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/16 v4, 0x9

    .line 225
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    const/16 v4, 0xa

    .line 226
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const/16 v4, 0xb

    .line 227
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    const/16 v4, 0xc

    .line 228
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    const/16 v4, 0xd

    .line 229
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    const/16 v4, 0xe

    .line 230
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    const/16 v4, 0xf

    .line 231
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    const/16 v4, 0x10

    .line 232
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    const/16 v4, 0x11

    .line 233
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    const/16 v4, 0x12

    .line 234
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v41}, Lcom/verimatrix/vdc/SendEvent;-><init>(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;JLjava/util/Map;JJJJJJJJJJJJJJJJ)V

    .line 213
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/DatabaseManager;->closeDatabase()V

    return-object v0
.end method

.method getEvents(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;I)Ljava/util/List;
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/verimatrix/vdc/Configuration;",
            "I)",
            "Ljava/util/List<",
            "Lcom/verimatrix/vdc/SendEvent;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "name"

    const-string v3, "timestamp"

    const-string v4, "properties"

    const-string v5, "event_id"

    const-string v6, "flags"

    const-string v7, "flags_addition"

    const-string v8, "dt"

    const-string v9, "dms"

    const-string v10, "d0"

    const-string v11, "d1"

    const-string v12, "d2"

    const-string v13, "d3"

    const-string v14, "r0"

    const-string v15, "r1"

    const-string v16, "r2"

    const-string v17, "r3"

    const-string v18, "dlt"

    const-string v19, "sq"

    const-string v20, "md"

    .line 246
    filled-new-array/range {v2 .. v20}, [Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    const-string v3, "events"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "timestamp ASC"

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 269
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 270
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 273
    :goto_0
    new-instance v6, Lcom/verimatrix/vdc/SendEvent;

    move-object v4, v6

    .line 276
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x1

    .line 277
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x2

    .line 278
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/verimatrix/vdc/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    const/4 v11, 0x3

    .line 279
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v13, 0x4

    .line 280
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v15, 0x5

    .line 281
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/4 v2, 0x6

    .line 282
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const/4 v2, 0x7

    .line 283
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    const/16 v2, 0x8

    .line 284
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const/16 v2, 0x9

    .line 285
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    const/16 v2, 0xa

    .line 286
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    const/16 v2, 0xb

    .line 287
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    const/16 v2, 0xc

    .line 288
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    const/16 v2, 0xd

    .line 289
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    const/16 v2, 0xe

    .line 290
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    const/16 v2, 0xf

    .line 291
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    const/16 v2, 0x10

    .line 292
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    .line 293
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    const/4 v2, 0x1

    move-object/from16 v5, p1

    move-object v2, v6

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v40}, Lcom/verimatrix/vdc/SendEvent;-><init>(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;JLjava/util/Map;JJJJJJJJJJJJJJJ)V

    .line 273
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    add-int/2addr v3, v2

    .line 296
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    move/from16 v2, p3

    if-gt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 298
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/DatabaseManager;->closeDatabase()V

    return-object v0
.end method

.method getEventsCount()I
    .locals 3

    .line 305
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT * FROM events"

    const/4 v2, 0x0

    .line 306
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 308
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 309
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->closeDatabase()V

    return v1
.end method

.method getLogEvents()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/verimatrix/vdc/LogEvent;",
            ">;"
        }
    .end annotation

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 368
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "name"

    const-string v3, "timestamp"

    const-string v4, "properties"

    .line 369
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    const-string v3, "events_log"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 375
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 376
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 378
    :cond_0
    new-instance v2, Lcom/verimatrix/vdc/LogEvent;

    const/4 v3, 0x0

    .line 379
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 380
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x2

    .line 381
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/verimatrix/vdc/JsonUtils;->jsonToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/verimatrix/vdc/LogEvent;-><init>(Ljava/lang/String;J[Ljava/lang/String;)V

    .line 378
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 385
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->closeDatabase()V

    return-object v0
.end method

.method getLogEvents(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/verimatrix/vdc/LogEvent;",
            ">;"
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "name"

    const-string v3, "timestamp"

    const-string v4, "properties"

    .line 392
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    const-string v3, "events_log"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 398
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 399
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 402
    :cond_0
    new-instance v4, Lcom/verimatrix/vdc/LogEvent;

    .line 403
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 404
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x2

    .line 405
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/verimatrix/vdc/JsonUtils;->jsonToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v5, v7, v8, v9}, Lcom/verimatrix/vdc/LogEvent;-><init>(Ljava/lang/String;J[Ljava/lang/String;)V

    .line 402
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v6

    .line 407
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    if-gt p1, v3, :cond_0

    .line 409
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 410
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->closeDatabase()V

    return-object v0
.end method

.method getLogEventsCount()I
    .locals 3

    .line 416
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT * FROM events_log"

    const/4 v2, 0x0

    .line 417
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 418
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 419
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 420
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->closeDatabase()V

    return v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE events(id INTEGER PRIMARY KEY,name TEXT,timestamp NUMERIC,properties TEXT,event_id NUMERIC,flags NUMERIC,flags_addition NUMERIC,dt NUMERIC,dms NUMERIC,d0 NUMERIC,d1 NUMERIC,d2 NUMERIC,d3 NUMERIC,r0 NUMERIC,r1 NUMERIC,r2 NUMERIC,r3 NUMERIC,dlt NUMERIC,sq NUMERIC,md NUMERIC)"

    .line 104
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE events_log(id INTEGER PRIMARY KEY,name TEXT,timestamp NUMERIC,properties TEXT)"

    .line 113
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS events"

    .line 119
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS events_log"

    .line 120
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/DatabaseManager;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method declared-synchronized openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    monitor-enter p0

    .line 126
    :try_start_0
    iget v0, p0, Lcom/verimatrix/vdc/DatabaseManager;->mOpenCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/verimatrix/vdc/DatabaseManager;->mOpenCounter:I

    if-ne v0, v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/verimatrix/vdc/DatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/verimatrix/vdc/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
