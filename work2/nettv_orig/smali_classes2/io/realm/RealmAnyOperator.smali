.class public abstract Lio/realm/RealmAnyOperator;
.super Ljava/lang/Object;
.source "RealmAnyOperator.java"


# instance fields
.field private nativeRealmAny:Lio/realm/internal/core/NativeRealmAny;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private type:Lio/realm/RealmAny$Type;


# direct methods
.method public constructor <init>(Lio/realm/RealmAny$Type;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/RealmAnyOperator;->type:Lio/realm/RealmAny$Type;

    return-void
.end method

.method public constructor <init>(Lio/realm/RealmAny$Type;Lio/realm/internal/core/NativeRealmAny;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lio/realm/RealmAnyOperator;->type:Lio/realm/RealmAny$Type;

    .line 5
    iput-object p2, p0, Lio/realm/RealmAnyOperator;->nativeRealmAny:Lio/realm/internal/core/NativeRealmAny;

    return-void
.end method

.method public static fromNativeRealmAny(Lio/realm/BaseRealm;Lio/realm/internal/core/NativeRealmAny;)Lio/realm/RealmAnyOperator;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lio/realm/internal/core/NativeRealmAny;->getType()Lio/realm/RealmAny$Type;

    move-result-object v0

    .line 2
    sget-object v1, Lio/realm/RealmAnyOperator$1;->$SwitchMap$io$realm$RealmAny$Type:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t cast to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :pswitch_0
    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0, p1}, Lio/realm/NullRealmAnyOperator;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    return-object p0

    .line 5
    :pswitch_1
    instance-of v0, p0, Lio/realm/Realm;

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v1, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/core/NativeRealmAny;->getModelClass(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/RealmProxyMediator;)Ljava/lang/Class;

    move-result-object v0

    .line 7
    new-instance v1, Lio/realm/RealmModelOperator;

    invoke-direct {v1, p0, p1, v0}, Lio/realm/RealmModelOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/core/NativeRealmAny;Ljava/lang/Class;)V
    :try_end_0
    .catch Lio/realm/exceptions/RealmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 8
    :catch_0
    :cond_0
    new-instance v0, Lio/realm/DynamicRealmModelRealmAnyOperator;

    invoke-direct {v0, p0, p1}, Lio/realm/DynamicRealmModelRealmAnyOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/core/NativeRealmAny;)V

    return-object v0

    .line 9
    :pswitch_2
    new-instance p0, Lio/realm/UUIDRealmAnyOperator;

    invoke-direct {p0, p1}, Lio/realm/UUIDRealmAnyOperator;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    return-object p0

    .line 10
    :pswitch_3
    new-instance p0, Lio/realm/ObjectIdRealmAnyOperator;

    invoke-direct {p0, p1}, Lio/realm/ObjectIdRealmAnyOperator;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    return-object p0

    .line 11
    :pswitch_4
    new-instance p0, Lio/realm/Decimal128RealmAnyOperator;

    invoke-direct {p0, p1}, Lio/realm/Decimal128RealmAnyOperator;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    return-object p0

    .line 12
    :pswitch_5
    new-instance p0, Lio/realm/DoubleRealmAnyOperator;

    invoke-direct {p0, p1}, Lio/realm/DoubleRealmAnyOperator;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    return-object p0

    .line 13
    :pswitch_6
    new-instance p0, Lio/realm/FloatRealmAnyOperator;

    invoke-direct {p0, p1}, Lio/realm/FloatRealmAnyOperator;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    return-object p0

    .line 14
    :pswitch_7
    new-instance p0, Lio/realm/DateRealmAnyOperator;

    invoke-direct {p0, p1}, Lio/realm/DateRealmAnyOperator;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    return-object p0

    .line 15
    :pswitch_8
    new-instance p0, Lio/realm/BinaryRealmAnyOperator;

    invoke-direct {p0, p1}, Lio/realm/BinaryRealmAnyOperator;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    return-object p0

    .line 16
    :pswitch_9
    new-instance p0, Lio/realm/StringRealmAnyOperator;

    invoke-direct {p0, p1}, Lio/realm/StringRealmAnyOperator;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    return-object p0

    .line 17
    :pswitch_a
    new-instance p0, Lio/realm/BooleanRealmAnyOperator;

    invoke-direct {p0, p1}, Lio/realm/BooleanRealmAnyOperator;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    return-object p0

    .line 18
    :pswitch_b
    new-instance p0, Lio/realm/IntegerRealmAnyOperator;

    invoke-direct {p0, p1}, Lio/realm/IntegerRealmAnyOperator;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized getNativeRealmAny()Lio/realm/internal/core/NativeRealmAny;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/realm/RealmAnyOperator;->nativeRealmAny:Lio/realm/internal/core/NativeRealmAny;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/realm/RealmAnyOperator;->createNativeRealmAny()Lio/realm/internal/core/NativeRealmAny;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmAnyOperator;->nativeRealmAny:Lio/realm/internal/core/NativeRealmAny;

    .line 2
    :cond_0
    iget-object v0, p0, Lio/realm/RealmAnyOperator;->nativeRealmAny:Lio/realm/internal/core/NativeRealmAny;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public checkValidObject(Lio/realm/BaseRealm;)V
    .locals 0

    return-void
.end method

.method public final coercedEquals(Lio/realm/RealmAnyOperator;)Z
    .locals 1

    invoke-direct {p0}, Lio/realm/RealmAnyOperator;->getNativeRealmAny()Lio/realm/internal/core/NativeRealmAny;

    move-result-object v0

    invoke-direct {p1}, Lio/realm/RealmAnyOperator;->getNativeRealmAny()Lio/realm/internal/core/NativeRealmAny;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/realm/internal/core/NativeRealmAny;->coercedEquals(Lio/realm/internal/core/NativeRealmAny;)Z

    move-result p1

    return p1
.end method

.method public abstract createNativeRealmAny()Lio/realm/internal/core/NativeRealmAny;
.end method

.method public final getNativePtr()J
    .locals 2

    invoke-direct {p0}, Lio/realm/RealmAnyOperator;->getNativeRealmAny()Lio/realm/internal/core/NativeRealmAny;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/core/NativeRealmAny;->getNativePtr()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getType()Lio/realm/RealmAny$Type;
    .locals 1

    iget-object v0, p0, Lio/realm/RealmAnyOperator;->type:Lio/realm/RealmAny$Type;

    return-object v0
.end method

.method public getTypedClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmAnyOperator;->type:Lio/realm/RealmAny$Type;

    invoke-virtual {v0}, Lio/realm/RealmAny$Type;->getTypedClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public abstract getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method
