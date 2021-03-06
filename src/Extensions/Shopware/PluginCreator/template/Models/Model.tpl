<?= $configuration->phpFileHeader; ?>
<?= $configuration->licenseHeader; ?>

namespace   Shopware\CustomModels\<?= $configuration->name; ?>;
use         Shopware\Components\Model\ModelEntity,
    Doctrine\ORM\Mapping AS ORM;

/**
 * @ORM\Table(name="s_plugin_<?= $names->under_score_model; ?>")
 * @ORM\Entity(repositoryClass="Repository")
 */
class <?= $names->camelCaseModel; ?> extends ModelEntity
{
    /**
     * Primary Key - autoincrement value
     *
     * @var integer $id
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var strint $name
     *
     * @ORM\Column(name="name", type="string", nullable=false)
     */
    private $name;

    /**
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * @param $name string
     */
    public function setName($name)
    {
        $this->name = $name;
    }
}
