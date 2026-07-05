.class public final synthetic Lcom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$1:Lcom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$2:Lcom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;->INSTANCE$1:Lcom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;->INSTANCE$2:Lcom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$NullFilteringHeadersMap;->$r8$lambda$KEnQ8YaC9x7448-o-c4v_duvcOo(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$-CC;->lambda$static$0(Ljava/lang/String;)Z

    move-result p1

    return p1

    :goto_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$NullFilteringHeadersMap;->$r8$lambda$DVYd1RNlWDfio80CnK0S49qNCjc(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
