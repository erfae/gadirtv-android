.class public Lio/realm/internal/UnmanagedSubscription;
.super Ljava/lang/Object;
.source "UnmanagedSubscription.java"

# interfaces
.implements Lio/realm/mongodb/sync/Subscription;


# instance fields
.field private final createdAt:Ljava/util/Date;

.field private final name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final objectType:Ljava/lang/String;

.field private final queryDesc:Ljava/lang/String;

.field private final queryPtr:J

.field private final updatedAt:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/realm/RealmQuery;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/realm/internal/UnmanagedSubscription;->createdAt:Ljava/util/Date;

    .line 3
    iput-object v0, p0, Lio/realm/internal/UnmanagedSubscription;->updatedAt:Ljava/util/Date;

    .line 4
    iput-object p1, p0, Lio/realm/internal/UnmanagedSubscription;->name:Ljava/lang/String;

    .line 5
    invoke-virtual {p2}, Lio/realm/RealmQuery;->getTypeQueried()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/realm/internal/UnmanagedSubscription;->objectType:Ljava/lang/String;

    .line 6
    invoke-virtual {p2}, Lio/realm/RealmQuery;->getDescription()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/realm/internal/UnmanagedSubscription;->queryDesc:Ljava/lang/String;

    .line 7
    invoke-virtual {p2}, Lio/realm/RealmQuery;->getQueryPointer()J

    move-result-wide p1

    iput-wide p1, p0, Lio/realm/internal/UnmanagedSubscription;->queryPtr:J

    return-void
.end method


# virtual methods
.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/UnmanagedSubscription;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/UnmanagedSubscription;->objectType:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/internal/UnmanagedSubscription;->queryDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryPointer()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/UnmanagedSubscription;->queryPtr:J

    return-wide v0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
