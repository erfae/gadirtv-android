.class public final Lcom/google/vr/sdk/widgets/video/deps/l;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final B:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field private C:I

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Lcom/google/vr/sdk/widgets/video/deps/gp;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final j:Lcom/google/vr/sdk/widgets/video/deps/cb;

.field public final k:J

.field public final l:I

.field public final m:I

.field public final n:F

.field public final o:I

.field public final p:F

.field public final q:I

.field public final r:[B

.field public final s:Lcom/google/vr/sdk/widgets/video/deps/pw;

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 208
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/l$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/l$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/l;->B:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->a:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->b:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->f:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->h:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->n:F

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->o:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->p:F

    .line 66
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->r:[B

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->q:I

    .line 69
    const-class v0, Lcom/google/vr/sdk/widgets/video/deps/pw;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/pw;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->s:Lcom/google/vr/sdk/widgets/video/deps/pw;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->v:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->w:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->x:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->z:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->A:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->k:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 82
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 84
    :cond_1
    const-class v0, Lcom/google/vr/sdk/widgets/video/deps/cb;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/cb;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    .line 85
    const-class v0, Lcom/google/vr/sdk/widgets/video/deps/gp;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/gp;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->e:Lcom/google/vr/sdk/widgets/video/deps/gp;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/pw;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/gp;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIFIF[BI",
            "Lcom/google/vr/sdk/widgets/video/deps/pw;",
            "IIIIII",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/vr/sdk/widgets/video/deps/cb;",
            "Lcom/google/vr/sdk/widgets/video/deps/gp;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 23
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->a:Ljava/lang/String;

    move-object v1, p2

    .line 24
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->b:Ljava/lang/String;

    move-object v1, p3

    .line 25
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->f:Ljava/lang/String;

    move-object v1, p4

    .line 26
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    move-object v1, p5

    .line 27
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    move v1, p6

    .line 28
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    move v1, p7

    .line 29
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->h:I

    move v1, p8

    .line 30
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    move v1, p9

    .line 31
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    move v1, p10

    .line 32
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->n:F

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, p11

    if-ne v3, v2, :cond_0

    const/4 v3, 0x0

    .line 33
    :cond_0
    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->o:I

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, p12, v3

    if-nez v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    move/from16 v3, p12

    .line 35
    :goto_0
    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->p:F

    move-object/from16 v3, p13

    .line 36
    iput-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->r:[B

    move/from16 v3, p14

    .line 37
    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->q:I

    move-object/from16 v3, p15

    .line 38
    iput-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->s:Lcom/google/vr/sdk/widgets/video/deps/pw;

    move/from16 v3, p16

    .line 39
    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    move/from16 v3, p17

    .line 40
    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    move/from16 v3, p18

    .line 41
    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->v:I

    move/from16 v3, p19

    if-ne v3, v2, :cond_2

    const/4 v3, 0x0

    .line 42
    :cond_2
    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->w:I

    move/from16 v3, p20

    if-ne v3, v2, :cond_3

    const/4 v3, 0x0

    .line 43
    :cond_3
    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->x:I

    move/from16 v1, p21

    .line 44
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    move-object/from16 v1, p22

    .line 45
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->z:Ljava/lang/String;

    move/from16 v1, p23

    .line 46
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->A:I

    move-wide/from16 v1, p24

    .line 47
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->k:J

    if-nez p26, :cond_4

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object/from16 v1, p26

    :goto_1
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    move-object/from16 v1, p27

    .line 50
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    move-object/from16 v1, p28

    .line 51
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->e:Lcom/google/vr/sdk/widgets/video/deps/gp;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 11

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, -0x1

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 13
    invoke-static/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/cb;JLjava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-wide/from16 v24, p2

    .line 20
    new-instance v29, Lcom/google/vr/sdk/widgets/video/deps/l;

    move-object/from16 v0, v29

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v0 .. v28}, Lcom/google/vr/sdk/widgets/video/deps/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/pw;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    return-object v29
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF",
            "Lcom/google/vr/sdk/widgets/video/deps/cb;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/l;"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v14, p11

    .line 2
    invoke-static/range {v0 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/vr/sdk/widgets/video/deps/pw;Lcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/vr/sdk/widgets/video/deps/pw;Lcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF[BI",
            "Lcom/google/vr/sdk/widgets/video/deps/pw;",
            "Lcom/google/vr/sdk/widgets/video/deps/cb;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/l;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v26, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v27, p14

    .line 3
    new-instance v29, Lcom/google/vr/sdk/widgets/video/deps/l;

    move-object/from16 v0, v29

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v28, 0x0

    invoke-direct/range {v0 .. v28}, Lcom/google/vr/sdk/widgets/video/deps/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/pw;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    return-object v29
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;ILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/gp;)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/vr/sdk/widgets/video/deps/cb;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/gp;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/l;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, p8

    move/from16 v20, p9

    move-object/from16 v26, p10

    move-object/from16 v27, p11

    move/from16 v21, p12

    move-object/from16 v22, p13

    move-object/from16 v28, p14

    .line 7
    new-instance v29, Lcom/google/vr/sdk/widgets/video/deps/l;

    move-object/from16 v0, v29

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    invoke-direct/range {v0 .. v28}, Lcom/google/vr/sdk/widgets/video/deps/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/pw;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    return-object v29
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/vr/sdk/widgets/video/deps/cb;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/l;"
        }
    .end annotation

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    .line 6
    invoke-static/range {v0 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;ILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/gp;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/vr/sdk/widgets/video/deps/cb;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/l;"
        }
    .end annotation

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    .line 5
    invoke-static/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/cb;JLjava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/vr/sdk/widgets/video/deps/cb;",
            "J",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/google/vr/sdk/widgets/video/deps/l;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v21, p4

    move-object/from16 v22, p5

    move/from16 v23, p6

    move-object/from16 v27, p7

    move-wide/from16 v24, p8

    move-object/from16 v26, p10

    .line 17
    new-instance v29, Lcom/google/vr/sdk/widgets/video/deps/l;

    move-object/from16 v0, v29

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v28, 0x0

    invoke-direct/range {v0 .. v28}, Lcom/google/vr/sdk/widgets/video/deps/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/pw;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    return-object v29
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/cb;J)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 11

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    .line 16
    invoke-static/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/cb;JLjava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/cb;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/l;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v21, p4

    move-object/from16 v26, p5

    move-object/from16 v22, p6

    move-object/from16 v27, p7

    .line 18
    new-instance v29, Lcom/google/vr/sdk/widgets/video/deps/l;

    move-object/from16 v0, v29

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v28, 0x0

    invoke-direct/range {v0 .. v28}, Lcom/google/vr/sdk/widgets/video/deps/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/pw;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    return-object v29
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v27, p4

    .line 21
    new-instance v29, Lcom/google/vr/sdk/widgets/video/deps/l;

    move-object/from16 v0, v29

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v0 .. v28}, Lcom/google/vr/sdk/widgets/video/deps/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/pw;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    return-object v29
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIF",
            "Ljava/util/List<",
            "[B>;I)",
            "Lcom/google/vr/sdk/widgets/video/deps/l;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v26, p9

    move/from16 v21, p10

    .line 1
    new-instance v29, Lcom/google/vr/sdk/widgets/video/deps/l;

    move-object/from16 v0, v29

    const/4 v7, -0x1

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v0 .. v28}, Lcom/google/vr/sdk/widgets/video/deps/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/pw;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    return-object v29
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "[B>;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/l;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move-object/from16 v26, p8

    move/from16 v21, p9

    move-object/from16 v22, p10

    .line 4
    new-instance v29, Lcom/google/vr/sdk/widgets/video/deps/l;

    move-object/from16 v0, v29

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v0 .. v28}, Lcom/google/vr/sdk/widgets/video/deps/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/pw;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    return-object v29
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 9

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 8
    invoke-static/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v21, p6

    move-object/from16 v22, p7

    move/from16 v23, p8

    .line 9
    new-instance v29, Lcom/google/vr/sdk/widgets/video/deps/l;

    move-object/from16 v0, v29

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v0 .. v28}, Lcom/google/vr/sdk/widgets/video/deps/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/pw;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    return-object v29
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v21, p6

    move-object/from16 v22, p7

    .line 19
    new-instance v29, Lcom/google/vr/sdk/widgets/video/deps/l;

    move-object/from16 v0, v29

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v0 .. v28}, Lcom/google/vr/sdk/widgets/video/deps/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/pw;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    return-object v29
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 114
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v1, v0, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 32

    move-object/from16 v0, p0

    move/from16 v8, p1

    .line 87
    new-instance v30, Lcom/google/vr/sdk/widgets/video/deps/l;

    move-object/from16 v1, v30

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->f:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    iget v10, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->n:F

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->o:I

    iget v13, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->p:F

    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->r:[B

    iget v15, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->q:I

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->s:Lcom/google/vr/sdk/widgets/video/deps/pw;

    move-object/from16 v16, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->v:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->w:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->x:I

    move/from16 v21, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    move/from16 v22, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->z:Ljava/lang/String;

    move-object/from16 v23, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->A:I

    move/from16 v24, v1

    move-object/from16 v31, v2

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->k:J

    move-wide/from16 v25, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->e:Lcom/google/vr/sdk/widgets/video/deps/gp;

    move-object/from16 v29, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-direct/range {v1 .. v29}, Lcom/google/vr/sdk/widgets/video/deps/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/pw;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    return-object v30
.end method

.method public a(II)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 31

    move-object/from16 v0, p0

    move/from16 v20, p1

    move/from16 v21, p2

    .line 111
    new-instance v30, Lcom/google/vr/sdk/widgets/video/deps/l;

    move-object/from16 v1, v30

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->f:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->h:I

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    iget v10, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->n:F

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->o:I

    iget v13, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->p:F

    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->r:[B

    iget v15, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->q:I

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->s:Lcom/google/vr/sdk/widgets/video/deps/pw;

    move-object/from16 v16, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->v:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    move/from16 v22, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->z:Ljava/lang/String;

    move-object/from16 v23, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->A:I

    move/from16 v24, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->k:J

    move-wide/from16 v25, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->e:Lcom/google/vr/sdk/widgets/video/deps/gp;

    move-object/from16 v29, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v29}, Lcom/google/vr/sdk/widgets/video/deps/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/pw;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    return-object v30
.end method

.method public a(J)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 31

    move-object/from16 v0, p0

    move-wide/from16 v25, p1

    .line 88
    new-instance v30, Lcom/google/vr/sdk/widgets/video/deps/l;

    move-object/from16 v1, v30

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->f:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->h:I

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    iget v10, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->n:F

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->o:I

    iget v13, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->p:F

    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->r:[B

    iget v15, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->q:I

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->s:Lcom/google/vr/sdk/widgets/video/deps/pw;

    move-object/from16 v16, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->v:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->w:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->x:I

    move/from16 v21, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    move/from16 v22, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->z:Ljava/lang/String;

    move-object/from16 v23, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->A:I

    move/from16 v24, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->e:Lcom/google/vr/sdk/widgets/video/deps/gp;

    move-object/from16 v29, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v29}, Lcom/google/vr/sdk/widgets/video/deps/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/pw;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    return-object v30
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v28, p1

    .line 112
    new-instance v30, Lcom/google/vr/sdk/widgets/video/deps/l;

    move-object/from16 v1, v30

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->f:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->h:I

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    iget v10, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->n:F

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->o:I

    iget v13, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->p:F

    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->r:[B

    iget v15, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->q:I

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->s:Lcom/google/vr/sdk/widgets/video/deps/pw;

    move-object/from16 v16, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->v:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->w:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->x:I

    move/from16 v21, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    move/from16 v22, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->z:Ljava/lang/String;

    move-object/from16 v23, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->A:I

    move/from16 v24, v1

    move-object/from16 v31, v2

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->k:J

    move-wide/from16 v25, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->e:Lcom/google/vr/sdk/widgets/video/deps/gp;

    move-object/from16 v29, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-direct/range {v1 .. v29}, Lcom/google/vr/sdk/widgets/video/deps/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/pw;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    return-object v30
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gp;)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v29, p1

    .line 113
    new-instance v30, Lcom/google/vr/sdk/widgets/video/deps/l;

    move-object/from16 v1, v30

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->f:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->h:I

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    iget v10, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->n:F

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->o:I

    iget v13, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->p:F

    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->r:[B

    iget v15, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->q:I

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->s:Lcom/google/vr/sdk/widgets/video/deps/pw;

    move-object/from16 v16, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->v:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->w:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->x:I

    move/from16 v21, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    move/from16 v22, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->z:Ljava/lang/String;

    move-object/from16 v23, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->A:I

    move/from16 v24, v1

    move-object/from16 v31, v2

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->k:J

    move-wide/from16 v25, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-direct/range {v1 .. v29}, Lcom/google/vr/sdk/widgets/video/deps/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/pw;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    return-object v30
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/l;)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    return-object v0

    .line 92
    :cond_0
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/pb;->g(Ljava/lang/String;)I

    move-result v2

    .line 93
    iget-object v4, v1, Lcom/google/vr/sdk/widgets/video/deps/l;->a:Ljava/lang/String;

    .line 94
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/l;->b:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->b:Ljava/lang/String;

    :goto_0
    move-object v5, v3

    .line 95
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->z:Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v2, v6, :cond_2

    if-ne v2, v7, :cond_3

    .line 96
    :cond_2
    iget-object v6, v1, Lcom/google/vr/sdk/widgets/video/deps/l;->z:Ljava/lang/String;

    if-eqz v6, :cond_3

    move-object/from16 v25, v6

    goto :goto_1

    :cond_3
    move-object/from16 v25, v3

    .line 98
    :goto_1
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    iget v3, v1, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    :cond_4
    move v9, v3

    .line 99
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 101
    iget-object v6, v1, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    invoke-static {v6, v2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/ps;->j(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ne v8, v7, :cond_5

    move-object v8, v6

    goto :goto_2

    :cond_5
    move-object v8, v3

    .line 104
    :goto_2
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->n:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v3, v6

    if-nez v6, :cond_6

    const/4 v6, 0x2

    if-ne v2, v6, :cond_6

    .line 106
    iget v2, v1, Lcom/google/vr/sdk/widgets/video/deps/l;->n:F

    move v13, v2

    goto :goto_3

    :cond_6
    move v13, v3

    .line 107
    :goto_3
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    iget v3, v1, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    or-int v24, v2, v3

    .line 108
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    .line 109
    invoke-static {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cb;->a(Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/cb;

    move-result-object v30

    .line 110
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/l;

    move-object v3, v1

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->f:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    iget v10, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->h:I

    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    iget v14, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->o:I

    iget v15, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->p:F

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->r:[B

    move-object/from16 v16, v2

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->q:I

    move/from16 v17, v2

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->s:Lcom/google/vr/sdk/widgets/video/deps/pw;

    move-object/from16 v18, v2

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    move/from16 v19, v2

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    move/from16 v20, v2

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->v:I

    move/from16 v21, v2

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->w:I

    move/from16 v22, v2

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->x:I

    move/from16 v23, v2

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->A:I

    move/from16 v26, v2

    move-object/from16 p1, v1

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->k:J

    move-wide/from16 v27, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->e:Lcom/google/vr/sdk/widgets/video/deps/gp;

    move-object/from16 v31, v1

    invoke-direct/range {v3 .. v31}, Lcom/google/vr/sdk/widgets/video/deps/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/pw;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v22, p8

    move-object/from16 v23, p9

    .line 89
    new-instance v30, Lcom/google/vr/sdk/widgets/video/deps/l;

    move-object/from16 v1, v30

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->f:Ljava/lang/String;

    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->h:I

    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->n:F

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->o:I

    iget v13, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->p:F

    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->r:[B

    iget v15, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->q:I

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->s:Lcom/google/vr/sdk/widgets/video/deps/pw;

    move-object/from16 v16, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->v:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->w:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->x:I

    move/from16 v21, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->A:I

    move/from16 v24, v1

    move-object/from16 v31, v2

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->k:J

    move-wide/from16 v25, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->e:Lcom/google/vr/sdk/widgets/video/deps/gp;

    move-object/from16 v29, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-direct/range {v1 .. v29}, Lcom/google/vr/sdk/widgets/video/deps/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/pw;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/gp;)V

    return-object v30
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/l;)Z
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 148
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 149
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->C:I

    if-eqz v2, :cond_2

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->C:I

    if-eqz v3, :cond_2

    if-eq v2, v3, :cond_2

    return v1

    .line 151
    :cond_2
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->h:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->h:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->n:F

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->n:F

    .line 152
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->o:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->o:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->p:F

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->p:F

    .line 153
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->q:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->q:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->v:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->v:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->w:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->w:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->x:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->x:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->k:J

    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->k:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->a:Ljava/lang/String;

    .line 154
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->b:Ljava/lang/String;

    .line 155
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->z:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->z:Ljava/lang/String;

    .line 156
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->A:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->A:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->f:Ljava/lang/String;

    .line 157
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    .line 158
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    .line 159
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    .line 160
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->e:Lcom/google/vr/sdk/widgets/video/deps/gp;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->e:Lcom/google/vr/sdk/widgets/video/deps/gp;

    .line 161
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->s:Lcom/google/vr/sdk/widgets/video/deps/pw;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->s:Lcom/google/vr/sdk/widgets/video/deps/pw;

    .line 162
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->r:[B

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->r:[B

    .line 163
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/l;->b(Lcom/google/vr/sdk/widgets/video/deps/l;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 116
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->C:I

    if-nez v0, :cond_8

    const/16 v0, 0x20f

    .line 118
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 119
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 120
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 121
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 122
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 123
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 124
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 125
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 126
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 127
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->z:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 128
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->A:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 129
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/cb;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 130
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->e:Lcom/google/vr/sdk/widgets/video/deps/gp;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gp;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 131
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->b:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 132
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 133
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->k:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 134
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->n:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 135
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->p:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 136
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->o:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 137
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->q:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 138
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->v:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 139
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->w:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 140
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->x:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 141
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    add-int/2addr v0, v1

    .line 142
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->C:I

    .line 143
    :cond_8
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->C:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 115
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->z:Ljava/lang/String;

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    iget v9, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->n:F

    iget v10, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    iget v11, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x68

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Format("

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ["

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "])"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->n:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 184
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->p:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 186
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->r:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Parcel;Z)V

    .line 187
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->r:[B

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 189
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->s:Lcom/google/vr/sdk/widgets/video/deps/pw;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 191
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->v:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->w:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->x:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->z:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->A:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->k:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 200
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 201
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    .line 203
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_2
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 206
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->e:Lcom/google/vr/sdk/widgets/video/deps/gp;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
